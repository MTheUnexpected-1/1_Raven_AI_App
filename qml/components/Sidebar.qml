import QtQuick
import QtQuick.Controls


Rectangle {
    id: root

    color: Theme.background

    /*
        Later MainScreen can listen to these.
    */

    signal newChatRequested()
    signal libraryRequested()
    signal searchRequested()
    signal collapseRequested()
    signal accountRequested()


    /*
        ============================================================
        LOGO HEADER
        ============================================================
    */

    Rectangle {
        id: logoArea

        height: parent.height * 0.07

        color: Theme.background

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top


        Text {
            id: logoText

            text: qsTr("MT AI")

            color: Theme.textPrimary

            font.family: Theme.fontPrimary
            font.pixelSize: Theme.textHeading

            anchors.left: parent.left
            anchors.leftMargin: Theme.spacingSmall

            anchors.verticalCenter: parent.verticalCenter
        }


        Button {
            id: searchButton

            width: parent.height * 0.8
            height: parent.height * 0.8

            anchors.right: collapseButton.left
            anchors.verticalCenter: parent.verticalCenter

            icon.source: "../../resources/icons/search.svg"

            icon.width: width * 0.65
            icon.height: height * 0.65

            icon.color: Theme.textPrimary

            flat: true

            display: AbstractButton.IconOnly

            onClicked: root.searchRequested()
        }


        Button {
            id: collapseButton

            width: parent.height * 0.8
            height: parent.height * 0.8

            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter

            icon.source: "../../resources/icons/close_sidebar.svg"

            icon.width: width * 0.65
            icon.height: height * 0.65

            icon.color: Theme.textPrimary

            flat: true

            display: AbstractButton.IconOnly

            onClicked: root.collapseRequested()
        }
    }


    /*
        ============================================================
        FEATURE BUTTONS
        ============================================================
    */

    Rectangle {
        id: featuresArea

        height: parent.height * 0.10

        color: Theme.background

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: logoArea.bottom


        Column {
            id: featuresColumn

            anchors.fill: parent

            spacing: Theme.spacingSmall


            Button {
                id: newChatButton

                width: parent.width

                height:
                    (featuresColumn.height -
                     featuresColumn.spacing) / 2

                text: qsTr("New Chat")

                font.family: Theme.fontPrimary
                font.pixelSize: Theme.textNormal
                font.weight: Theme.weightBold

                icon.source: "../../resources/icons/newchat.svg"

                icon.width: Theme.iconLarge
                icon.height: Theme.iconLarge

                icon.color: Theme.accent

                onClicked: root.newChatRequested()


                background: Rectangle {
                    color: Theme.background

                    radius: Theme.radiusLarge

                    border.color: Theme.border
                    border.width: Theme.borderNormal
                }
            }


            Button {
                id: libraryButton

                width: parent.width

                height:
                    (featuresColumn.height -
                     featuresColumn.spacing) / 2

                text: qsTr("Library")

                font.family: Theme.fontPrimary
                font.pixelSize: Theme.textNormal
                font.weight: Theme.weightBold

                icon.source: "../../resources/icons/library.svg"

                icon.width: Theme.iconLarge
                icon.height: Theme.iconLarge

                icon.color: Theme.accent

                onClicked: root.libraryRequested()


                background: Rectangle {
                    color: Theme.background

                    radius: Theme.radiusLarge

                    border.color: Theme.border
                    border.width: Theme.borderNormal
                }
            }
        }
    }


    /*
        ============================================================
        CHATS HEADER
        ============================================================
    */

    Rectangle {
        id: chatsHeader

        height: parent.height * 0.045

        color: Theme.background

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: featuresArea.bottom


        Text {
            id: chatsText

            text: qsTr("Chats")

            color: Theme.textPrimary

            font.family: Theme.fontPrimary
            font.pixelSize: Theme.textLarge
            font.weight: Theme.weightBold

            anchors.left: parent.left
            anchors.leftMargin: Theme.spacingSmall

            anchors.verticalCenter: parent.verticalCenter
        }


        Text {
            id: chatsArrow

            text: qsTr("›")

            color: Theme.textPrimary

            font.family: Theme.fontPrimary
            font.pixelSize: Theme.textLarge
            font.weight: Theme.weightBold

            rotation: 90

            anchors.left: chatsText.right
            anchors.leftMargin: Theme.spacingSmall

            anchors.verticalCenter: parent.verticalCenter
        }


        Button {
            id: chatNewButton

            width: parent.height * 0.8
            height: parent.height * 0.8

            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter

            icon.source: "../../resources/icons/newchat.svg"

            icon.width: width * 0.65
            icon.height: height * 0.65

            icon.color: Theme.textPrimary

            flat: true

            display: AbstractButton.IconOnly

            onClicked: root.newChatRequested()
        }
    }


    /*
        ============================================================
        CHAT HISTORY
        ============================================================
    */

    Rectangle {
        id: chatHistoryArea

        color: Theme.background

        anchors.left: parent.left
        anchors.right: parent.right

        anchors.top: chatsHeader.bottom
        anchors.bottom: accountArea.top


        ScrollView {
            id: chatScroll

            anchors.fill: parent

            contentWidth: availableWidth

            clip: true


            Column {
                id: chatColumn

                width: chatScroll.availableWidth

                spacing: Theme.spacingSmall

                /*
                    C++ / ChatManager will eventually
                    create conversation buttons here.
                */
            }


            ScrollBar.vertical: ScrollBar {
                policy: ScrollBar.AsNeeded
            }
        }
    }


    /*
        ============================================================
        ACCOUNT AREA
        ============================================================
    */

    Rectangle {
        id: accountArea

        height: parent.height * 0.07

        color: Theme.background

        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom


        Button {
            id: accountButton

            anchors.fill: parent

            text: qsTr("{User}")

            font.family: Theme.fontPrimary
            font.pixelSize: Theme.textNormal
            font.weight: Theme.weightBold

            onClicked: root.accountRequested()


            background: Rectangle {
                color: Theme.background

                radius: Theme.radiusLarge

                border.color: Theme.border
                border.width: Theme.borderNormal
            }
        }
    }
}