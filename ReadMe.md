# CMakeLists.txt
Purpose - this is the build instruction file.
The job is to tell CMake:
* which `.cpp` files belong to my app.
* which qt modules i use.
* which resources should be included.
* what excecutable should be built.
* where headers and libraries come from.

> [!IMPORTANT]
> !! THIS DOES NOT CONTAIN APP LOGIC.
> !! THINK OF IT AS HERE ARE ALL THE PARTS. BUILD THEM INTO ONE PROGRAM.

# app/ 

this folder contains all my C++ source code.

## main.cpp

this is the entry point of my program.
when my app starts, excucution beings here.
the job should stay very small.

1. start QT Application
2. ↓
3. Create my main application/controller
4. ↓
5. Load Styles
6. ↓
7. Show Main Window
8. ↓
9. Start QT event loop

> [!WARNING]
> !! DO NOT PUT IN CHAT LOGIC, NETWORKING, STORAGE OR HUGE UI LAYOUTS HERE.
> !! THINK OF IT AS IGNITION KEY OF THE CAR.

## app/

this folder handles the overall application.

### Application.h

this declares what my main application/controller is.
the header answers questions like:
* what objects does the applicatin own?
* what functions exist?
* what other classes can interact with it?

for example:

**Application owns:**
* MainWindow
* ChatManager
* AIClient
* ChatStorage

A `.h` file generally describes:
what does this class have and what can it do?


### Application.cpp

this contains the actual behavior declared in `Application.h`

this is where the application might:
* create the main window.
* create the chat manager.
* connect major systems together.
* load the stylesheet.
* intialize storage.
* intialize settings.

**Think:**
* `Application.h`: WHAT exists
* `Application.cpp`: HOW it works

that `.h` vs `.cpp` distinction will appear throughout my project.


# ui/

this contains things the user can see and interact with.

## MainWindow.h

this declares my main window.

it may know that my window contains:
* Sidebar
* Chatview
* InputBar

> [!NOTE]
> !! BUT IT DOESNT NEED ALL IMPLEMENTATION DETAILS HERE.

**Think:**
Blueprint of the main window.

## MainWindow.cpp

this actually constructs the main window.

for example, its responsibilities could include:
* create SideBar
* Create ChatView
* Create InputBar
* put SideBar on left
* put ChatView and InputBar on right
* Connect UI Signals

**visually:**
```text
MainWindow
│
├── Sidebar
│
└── Right area
     ├── ChatView
     └── InputBar
```

this file should focus mostly on HOW THE MAJOR UI PIECES FIT TOGETHER.
it should not be responsible for calling an AI Server itself.


## SideBar.h

Declares the sidebar component.

The sidebar might eventually contain:
* New Chat Button
* Search Chats
* Conversation List
* Settings Button
* Account Button

it can also declare signals such as:
* New Chat Requested
* Conversation Selected
* Conversation Deleted

## SideBar.cpp

Contains the actual sidebar behavior.

This Could Handle:
* Create the New Chat Button.
* Creating the Conversation List.
* Deleting Button Clicks
* Displaying Conversation Titles.

> [!WARNING]
> !! SIDEBAR SHOULD NOT SAVE CONVERSATIONS.
> !! IT SHOULD SAY:
> !! "THE USER CLICKED DELETE."
> then another handles the actual deletion.
> this seperation is important.

## ChatView.h

Declares the area where the conversation appears.

Think of the big center area in ChatGPT.

It might provide abilities like:
* `displayMessage()`
* `clearMessages()`
* `showConversation()`
* `scrollToBottom()`

You don't need those exact names—I'm explaining the responsibilities.

## ChatView.cpp

Contains the logic for actually showing messages.

If a conversation has:
* Message 1
* Message 2
* Message 3

then `ChatView.cpp` might create:
* MessageWidget
* MessageWidget
* MessageWidget

and put them vertically.

**Conceptually:**
```text
ChatView
│
├── MessageWidget
├── MessageWidget
├── MessageWidget
└── MessageWidget
```

## MessageWidget.h

This describes one message displayed on screen.

For example:
```text
┌──────────────────────────────┐
│ You                          │
│ How do pointers work?        │
└──────────────────────────────┘
```

or:
```text
┌──────────────────────────────┐
│ Assistant                    │
│ A pointer stores an address. │
│                    Copy      │
└──────────────────────────────┘
```

This class might know about:
* message text
* author/role
* copy button
* avatar
* timestamp

## MessageWidget.cpp

Actually builds that message.

It handles things like:
* create label
* create copy button
* create layout
* set message text
* show assistant/user state

QSS handles most of the appearance.

The C++ handles the structure and behavior.

## InputBar.h

Declares the message-input component.

That's this part:
```text
┌─────────────────────────────────┐
│ Message ChatGPT...          ➤   │
└─────────────────────────────────┘
```

It might contain:
* QTextEdit
* Send button
* Attachment button

## InputBar.cpp

Handles input behavior.

For example:
* user types text
* user presses Send
* InputBar checks text
* InputBar emits a signal
* input gets cleared

**The important part:**

InputBar doesn't need to know anything about AI.

It simply reports:
The user submitted "Hello".

Something else handles what happens next.

# models/

This folder contains your data structures.

These usually have nothing to do with what the GUI looks like.

## Message.h

This represents the actual message data.

This is very different from MessageWidget.

Imagine:

**Message**
* role = User
* content = "Hello"
* time = 12:03
* id = 45783

There is no button.
No color.
No border radius.
No QWidget.
It's just information.

**Important distinction**
* `Message`: DATA

versus:
* `MessageWidget`: VISUAL REPRESENTATION

For example:
```text
Message
    content = "Hello"
          │
          ↓
MessageWidget
    ┌───────────────┐
    │ You           │
    │ Hello         │
    └───────────────┘
```

This concept is extremely important.

## Conversation.h

Declares what one conversation contains.

Think of a conversation as:
```text
Conversation
│
├── ID
├── title
├── created date
├── modified date
└── Messages
     ├── Message
     ├── Message
     ├── Message
     └── Message
```

So your "Learning C++" chat might internally contain a list/vector of Message objects.

## Conversation.cpp

Contains operations related to a conversation.

For example conceptually:
* add message
* remove message
* change title
* get messages
* update modified date

Again, it should know nothing about buttons or QSS.

## ChatManager.h

This is one of your most important files.

It describes the component that manages the actual chat process.

Think of it as the coordinator.

It might manage:
* current conversation
* all conversations
* sending messages
* receiving responses
* creating new chats
* loading chats
* saving chats

## ChatManager.cpp

This is where the major chat workflow happens.

Suppose you type:
How does RAM work?

The flow could be:
```text
InputBar
   │
   │ user submitted text
   ↓
ChatManager
   │
   ├── create Message
   │
   ├── add Message to Conversation
   │
   ├── tell UI message was added
   │
   └── send request to AIClient
                │
                ↓
              Server
                │
                ↓
             AIClient
                │
                ↓
           ChatManager
                │
                ├── create assistant Message
                └── add it to Conversation
```

This is why ChatManager is basically the traffic controller.

# network/

Everything involving internet communication belongs here.

## AIClient.h

Declares your AI communication interface.

Conceptually it might say:
* I can send a conversation.
* I can receive response chunks.
* I can report network errors.
* I can report when a response finishes.

The rest of your program doesn't need to know the details of HTTP.
That's extremely useful.

## AIClient.cpp

Handles the actual networking.

Eventually you might use Qt classes such as:
* `QNetworkAccessManager`
* `QNetworkRequest`
* `QNetworkReply`

Its job may involve:
* create HTTP request
* add headers
* create JSON request
* send request
* receive response
* detect error
* handle streaming data

The important architecture is:
```text
ChatManager
     │
     ↓
AIClient
     │
     ↓
Internet
```

Not:
```text
SendButton
     ↓
Internet
```

Keep networking away from your UI.

# storage/

Anything related to keeping chats after closing the application goes here.

## ChatStorage.h

Defines what your storage system can do.

Something conceptually like:
* save conversation
* load conversation
* load all conversations
* delete conversation

The rest of your application doesn't need to care whether you're using JSON, SQLite, or something else.

## ChatStorage.cpp

Actually performs those operations.

At first you could save:
`chats.json`

Later you might decide:
`SQLite database`

Because storage is isolated behind ChatStorage, you won't have to redesign the entire application.
That's one of the reasons for separating files.

# utils/

This is for smaller supporting functionality that doesn't fit somewhere else.
Don't dump everything into here.
Only put genuinely shared utilities here.

## Config.h

Could describe configuration your app needs.

Examples:
* server URL
* application name
* default settings
* file locations
* model settings

## Config.cpp

Could load or manage that configuration.

Eventually your app might have:
* model = "something"
* temperature = ...
* theme = dark
* serverAddress = ...

Again, don't worry about this file initially.

# resources/

This folder contains things that aren't C++ code.

## resources/styles/main.qss

This is your main visual stylesheet.

Think of it like:
* app-wide colors
* default fonts
* general QWidget style
* common button style

For example the idea might be:
```text
All widgets:
    dark background

Labels:
    light text

Buttons:
    rounded corners
```
You write actual QSS yourself as you learn it.

## sidebar.qss

Styling specifically related to the sidebar.

For example:
* sidebar background
* New Chat button
* conversation buttons
* selected conversation
* hover states

So:
* `Sidebar.cpp`: behavior
* `sidebar.qss`: appearance

## chat.qss

Styles:
* conversation background
* user messages
* assistant messages
* code blocks
* copy buttons
* scroll area

## input.qss

Styles:
* text box
* send button
* input container
* focus state
* hover state
* disabled state

## resources.qrc

This tells Qt:
Embed these resource files inside my application.

For example:
* `styles/main.qss`
* `icons/send.svg`
* `icons/newchat.svg`
* `icons/settings.svg`

Then when you compile the application, these can become part of the executable rather than needing random files sitting next to your `.exe`.

Conceptually:
```text
resources.qrc
       │
       ├── main.qss
       ├── send.svg
       └── newchat.svg
              │
              ↓
        compiled application
```

# icons/

Pretty simple.

Contains things like:
* `send.svg`
* `newchat.svg`
* `settings.svg`
* `copy.svg`
* `edit.svg`
* `delete.svg`

Using SVG is usually nice because it scales cleanly.

# data/

This would contain application-generated information.

For development you might have:
* `chats.json`
* `settings.json`

But eventually you should research where applications are supposed to store user data rather than saving it directly inside the program installation folder.
Qt has helpers for this.

**Later research:**
* `QStandardPaths`

# How everything connects

This is the most important picture.

```text
                         main.cpp
                            │
                            ↓
                       Application
                            │
          ┌─────────────────┼──────────────────┐
          ↓                 ↓                  ↓
      MainWindow        ChatManager        ChatStorage
          │                 │
     ┌────┼────┐            │
     ↓    ↓    ↓            ↓
Sidebar ChatView InputBar  Conversation
             │      │         │
             ↓      │         ↓
       MessageWidget│      Message
                    │
                    │ signal
                    ↓
               ChatManager
                    │
                    ↓
                 AIClient
                    │
                    ↓
               AI service
```

And QSS sits beside the GUI:

```text
C++ UI structure                 QSS
----------------                 ---


Sidebar.cpp       ← styles →     sidebar.qss


ChatView.cpp      ← styles →     chat.qss


MessageWidget.cpp ← styles →     chat.qss


InputBar.cpp      ← styles →     input.qss


MainWindow.cpp    ← styles →     main.qss
```

# One rule that will save you a lot of pain

When you are deciding where something belongs, ask:
**Is this data, UI, application logic, networking, storage, or styling?**

If it's:

| Thing | Where it belongs |
|---|---|
| Button | `ui/` |
| Button color | `.qss` |
| Message text/data | `models/` |
| Deciding what happens after Send | `ChatManager` |
| Calling the AI | `AIClient` |
| Saving chats | `ChatStorage` |
| Starting the program | `main.cpp` |
| Building everything | `CMakeLists.txt` |

That's the mental model I want you to develop before you start writing much code.