import QtQuick
import QtQuick.Controls
import QtQuick.Window
import "components"

ApplicationWindow {
    id: main

    width: Screen.width * 0.8
    height: Screen.height * 0.8

    visible: true

    title: qsTr("Raven AI")

    color: Theme.background


    /*
        ============================================================
        SIDEBAR
        ============================================================
    */

    Sidebar {
        id: sidebar

        width: parent.width * 0.27

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        onNewChatRequested: {
            console.log("New chat requested")
        }

        onLibraryRequested: {
            console.log("Library requested")
        }

        onSearchRequested: {
            console.log("Search requested")
        }

        onCollapseRequested: {
            console.log("Collapse sidebar requested")
        }

        onAccountRequested: {
            console.log("Account requested")
        }
    }


    /*
        ============================================================
        MAIN AREA
        ============================================================
    */

    Rectangle {
        id: mainArea

        color: Theme.background

        anchors.left: sidebar.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom


        /*
            ========================================================
            CHAT / WORK MODE SELECTOR
            ========================================================
        */

        ModeSelector {
            id: modeSelector

            height: parent.height * 0.07

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top

            onChatSelected: {
                console.log("Chat mode")
            }

            onWorkSelected: {
                console.log("Work mode")
            }
        }


        /*
            ========================================================
            CHAT AREA
            ========================================================
        */

        ChatArea {
            id: chatArea

            username: "{User}"

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: modeSelector.bottom
            anchors.bottom: parent.bottom

            onMessageSubmitted: function(message) {
                console.log("Message:", message)
            }
        }
    }
}