import QtQuick
import QtQuick.Controls


Rectangle {
    id: root

    property string username: "{User}"

    signal messageSubmitted(string message)

    color: Theme.background


    /*
        ============================================================
        EMPTY CHAT / WELCOME AREA
        ============================================================
    */

    Column {
        id: welcomeContent

        width: parent.width * 0.70

        spacing: Theme.spacingMedium

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        Text {
            id: welcomeText

            width: parent.width

            text: qsTr("How Can I Help, ") + root.username

            color: Theme.textPrimary

            font.family: Theme.fontPrimary
            font.pixelSize: Theme.textHeading
            font.weight: Theme.weightNormal

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }


        Rectangle {
            id: inputContainer

            width: parent.width

            height: root.height * 0.065

            radius: height / 2

            color: Theme.background

            border.color: Theme.border
            border.width: Theme.borderNormal


            TextField {
                id: messageInput

                anchors.left: parent.left
                anchors.right: sendButton.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                anchors.leftMargin: Theme.spacingLarge
                anchors.rightMargin: Theme.spacingSmall

                placeholderText: qsTr("Ask RavenAI")

                placeholderTextColor: Theme.textSecondary

                color: Theme.textPrimary

                font.family: Theme.fontPrimary
                font.pixelSize: Theme.textNormal

                background: Rectangle {
                    color: Theme.transparent
                }

                Keys.onReturnPressed: {
                    if (messageInput.text.length > 0) {
                        root.messageSubmitted(messageInput.text)
                        messageInput.clear()
                    }
                }
            }


            Button {
                id: sendButton

                width: parent.height * 0.75
                height: parent.height * 0.75

                anchors.right: parent.right
                anchors.rightMargin: Theme.spacingSmall

                anchors.verticalCenter: parent.verticalCenter

                icon.source: "../../resources/icons/send.svg"

                icon.width: width * 0.55
                icon.height: height * 0.55

                icon.color: Theme.textPrimary

                flat: true

                display: AbstractButton.IconOnly

                onClicked: {
                    if (messageInput.text.length > 0) {
                        root.messageSubmitted(messageInput.text)
                        messageInput.clear()
                    }
                }
            }
        }
    }
}