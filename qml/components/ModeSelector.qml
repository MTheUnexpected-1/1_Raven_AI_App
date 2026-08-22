import QtQuick
import QtQuick.Controls


Rectangle {
    id: root

    property string selectedMode: "chat"

    signal chatSelected()
    signal workSelected()

    color: Theme.background


    Rectangle {
        id: selector

        width: parent.width * 0.40
        height: parent.height * 0.75

        anchors.centerIn: parent

        radius: height / 2

        color: Theme.background

        border.color: Theme.border
        border.width: Theme.borderNormal


        Rectangle {
            id: selectedBackground

            width: parent.width / 2

            anchors.top: parent.top
            anchors.bottom: parent.bottom

            anchors.left:
                root.selectedMode === "chat"
                ? parent.left
                : undefined

            anchors.right:
                root.selectedMode === "work"
                ? parent.right
                : undefined

            color: Theme.surface

            radius: height / 2

            border.color: Theme.border
            border.width: Theme.borderNormal
        }


        Button {
            id: chatButton

            width: parent.width / 2

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            text: qsTr("Chat")

            font.family: Theme.fontPrimary
            font.pixelSize: Theme.textNormal
            font.weight: Theme.weightBold

            flat: true

            onClicked: {
                root.selectedMode = "chat"
                root.chatSelected()
            }


            contentItem: Text {
                text: chatButton.text

                color: Theme.textPrimary

                font.family: Theme.fontPrimary
                font.pixelSize: Theme.textNormal
                font.weight: Theme.weightBold

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }


            background: Rectangle {
                color: Theme.transparent
            }
        }


        Button {
            id: workButton

            width: parent.width / 2

            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            text: qsTr("Work")

            font.family: Theme.fontPrimary
            font.pixelSize: Theme.textNormal
            font.weight: Theme.weightBold

            flat: true

            onClicked: {
                root.selectedMode = "work"
                root.workSelected()
            }


            contentItem: Text {
                text: workButton.text

                color: Theme.textPrimary

                font.family: Theme.fontPrimary
                font.pixelSize: Theme.textNormal
                font.weight: Theme.weightBold

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }


            background: Rectangle {
                color: Theme.transparent
            }
        }
    }
}