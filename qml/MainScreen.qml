import QtQuick
import QtQuick.Controls

Rectangle {
    id: appWindow

    implicitWidth: design.previewCanvasWidth
    implicitHeight: design.previewCanvasHeight
    color: design.appBackgroundColor

    QtObject {
        id: design

        property string primaryFontFamily: "Artifika"
        property string fallbackFontFamily: "Arial"
        property real textScale: 1.0
        readonly property string iconFolderPath: "../../resources/icons/"

        readonly property int previewCanvasWidth: 3840
        readonly property int previewCanvasHeight: 2160

        readonly property color appBackgroundColor: "#220153"
        readonly property color panelBackgroundColor: "#5a168e"
        readonly property color panelHoverColor: "#361065"
        readonly property color primaryTextColor: "#ffffff"
        readonly property color secondaryTextColor: "#cfcfcf"
        readonly property color primaryAccentColor: "#0080ff"
        readonly property color controlBorderColor: "#ffffff"
        readonly property color separatorColor: "#ffffff"
        readonly property color transparentColor: "transparent"

        readonly property int standardFontWeight: 400
        readonly property int boldFontWeight: Font.Bold
        readonly property real halfRatio: 0.5

        readonly property int separatorThickness: 2
        readonly property real separatorOpacity: 0.8

        readonly property int sidebarWidth: appWindow.width * sidebarWidthWindowRatio
        readonly property real sidebarWidthWindowRatio: 0.2
        readonly property int sidebarLogoAreaHeight: appWindow.height * sidebarLogoAreaHeightRatio
        readonly property real sidebarLogoAreaHeightRatio: 0.07
        readonly property int sidebarFeatureAreaHeight: appWindow.height * sidebarFeatureAreaHeightRatio
        readonly property real sidebarFeatureAreaHeightRatio: 0.1
        readonly property int sidebarChatsHeaderHeight: appWindow.height * sidebarChatsHeaderHeightRatio
        readonly property real sidebarChatsHeaderHeightRatio: 0.045
        readonly property int sidebarAccountAreaHeight: appWindow.height * sidebarAccountAreaHeightRatio
        readonly property real sidebarAccountAreaHeightRatio: 0.07
        readonly property int sidebarRightSeparatorWidth: separatorThickness
        readonly property int sidebarRightSeparatorX: sidebar.width - sidebarRightSeparatorWidth
        readonly property int sidebarSectionLeftPadding: 8
        readonly property int sidebarSectionRightPadding: 8
        readonly property int sidebarSectionTopPadding: 8
        readonly property int sidebarSectionBottomPadding: 8
        readonly property int sidebarButtonVerticalGap: 8

        readonly property int logoTextFontSize: 64 * textScale
        readonly property int logoTextLeftMargin: sidebarSectionLeftPadding
        readonly property int logoButtonRightMargin: sidebarSectionRightPadding
        readonly property int logoButtonGap: 8

        readonly property int searchButtonSize: 48
        readonly property int searchButtonIconSize: 32
        readonly property color searchButtonIconColor: primaryTextColor
        readonly property string searchButtonIconText: "\u2315"
        readonly property string searchButtonIconSource: iconFolderPath + "search.svg"

        readonly property int collapseButtonSize: 48
        readonly property int collapseButtonIconSize: 34
        readonly property color collapseButtonIconColor: primaryTextColor
        readonly property string collapseButtonIconText: "\u2039"
        readonly property string collapseButtonIconSource: iconFolderPath + "close_sidebar.svg"

        readonly property int iconOnlyButtonDefaultIconSize: 24
        readonly property int iconOnlyButtonPadding: 0

        readonly property int featureButtonsGap: 8
        readonly property int featureButtonFontSize: 22 * textScale
        readonly property int featureButtonIconSize: 36
        readonly property color featureButtonIconColor: primaryAccentColor
        readonly property int featureButtonTextIconSpacing: 8
        readonly property int newChatButtonCornerRadius: 30
        readonly property int libraryButtonCornerRadius: 30
        readonly property int featureButtonBorderWidth: 2
        readonly property int featureButtonHorizontalPadding: 18
        readonly property int featureButtonVerticalPadding: 8
        readonly property int textIconButtonPadding: 0
        readonly property int textIconButtonDefaultIconSize: 24
        readonly property int textIconButtonDefaultTextSize: 22
        readonly property int textIconButtonDefaultTextIconGap: 8
        readonly property int textIconButtonDefaultCornerRadius: 30
        readonly property int textIconButtonDefaultBorderWidth: 2
        readonly property string newChatButtonIconText: "+"
        readonly property string newChatButtonIconSource: iconFolderPath + "newchat.svg"
        readonly property string libraryButtonIconText: "\u25a6"
        readonly property string libraryButtonIconSource: iconFolderPath + "libary.svg"

        readonly property int chatsHeaderTextFontSize: 36 * textScale
        readonly property int chatsHeaderLeftMargin: 8
        readonly property int chatsHeaderArrowFontSize: 36 * textScale
        readonly property int chatsHeaderArrowLeftMargin: 8
        readonly property int chatsHeaderArrowRotation: 90
        readonly property int chatNewButtonSize: 48
        readonly property int chatNewButtonIconSize: 32
        readonly property color chatNewButtonIconColor: primaryTextColor
        readonly property string chatNewButtonIconText: "+"
        readonly property string chatNewButtonIconSource: iconFolderPath + "newchat.svg"

        readonly property int chatHistoryListGap: 8

        readonly property int accountButtonFontSize: 22 * textScale
        readonly property int accountButtonCornerRadius: 30
        readonly property int accountButtonBorderWidth: 2
        readonly property int accountButtonLeftMargin: sidebarSectionLeftPadding
        readonly property int accountButtonRightMargin: sidebarSectionRightPadding
        readonly property int accountButtonTopMargin: sidebarSectionTopPadding
        readonly property int accountButtonBottomMargin: sidebarSectionBottomPadding

        readonly property int modeSelectorHeight: appWindow.height * modeSelectorHeightRatio
        readonly property real modeSelectorHeightRatio: 0.07
        readonly property int modeSelectorBottomSeparatorHeight: separatorThickness
        readonly property int modeSwitchWidth: mainArea.width * modeSwitchWidthMainAreaRatio
        readonly property real modeSwitchWidthMainAreaRatio: 0.4
        readonly property int modeSwitchHeight: modeSelector.height * modeSwitchHeightSelectorRatio
        readonly property real modeSwitchHeightSelectorRatio: 0.75
        readonly property real modeSwitchSelectedBackgroundWidthRatio: 0.5
        readonly property real modeButtonWidthRatio: 0.5
        readonly property int modeSwitchCornerRadius: 60
        readonly property int modeSwitchSelectedBackgroundCornerRadius: 60
        readonly property int modeSwitchBorderWidth: 2
        readonly property int modeButtonFontSize: 22 * textScale

        readonly property real welcomeContentWidthRatio: 0.7
        readonly property int welcomeContentGap: 16
        readonly property int welcomeTextFontSize: 64 * textScale

        readonly property int messageInputContainerHeight: chatAreaRoot.height * messageInputContainerHeightRatio
        readonly property real messageInputContainerHeightRatio: 0.065
        readonly property int messageInputContainerCornerRadius: 60
        readonly property int messageInputContainerBorderWidth: 2
        readonly property int messageInputLeftMargin: 24
        readonly property int messageInputRightMargin: 8
        readonly property int messageInputFontSize: 22 * textScale
        readonly property int sendButtonSize: 48
        readonly property int sendButtonRightMargin: 8
        readonly property int sendButtonIconSize: 34
        readonly property color sendButtonIconColor: primaryTextColor
        readonly property string sendButtonIconText: "\u27a4"
        readonly property string sendButtonIconSource: iconFolderPath + "send.svg"
    }

    Rectangle {
        id: sidebar
        width: design.sidebarWidth
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: design.appBackgroundColor

        Rectangle {
            id: logoArea
            height: design.sidebarLogoAreaHeight
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            color: design.appBackgroundColor

            Text {
                id: logoText
                text: qsTr("MT AI")
                color: design.primaryTextColor
                font.family: design.primaryFontFamily
                font.pixelSize: design.logoTextFontSize
                anchors.left: parent.left
                anchors.leftMargin: design.logoTextLeftMargin
                anchors.verticalCenter: parent.verticalCenter
            }

            Button {
                id: searchButton
                width: design.searchButtonSize
                height: design.searchButtonSize
                anchors.right: collapseButton.left
                anchors.rightMargin: design.logoButtonGap
                anchors.verticalCenter: parent.verticalCenter
                padding: design.iconOnlyButtonPadding
                flat: true
                display: AbstractButton.IconOnly
                icon.source: design.searchButtonIconSource
                icon.width: design.searchButtonIconSize
                icon.height: design.searchButtonIconSize
                icon.color: design.searchButtonIconColor
                background: Rectangle {
                    color: searchButton.hovered ? design.panelHoverColor : design.transparentColor
                    radius: searchButton.width * design.halfRatio
                }
            }

            Button {
                id: collapseButton
                width: design.collapseButtonSize
                height: design.collapseButtonSize
                anchors.right: parent.right
                anchors.rightMargin: design.logoButtonRightMargin
                anchors.verticalCenter: parent.verticalCenter
                padding: design.iconOnlyButtonPadding
                flat: true
                display: AbstractButton.IconOnly
                icon.source: design.collapseButtonIconSource
                icon.width: design.collapseButtonIconSize
                icon.height: design.collapseButtonIconSize
                icon.color: design.collapseButtonIconColor
                background: Rectangle {
                    color: collapseButton.hovered ? design.panelHoverColor : design.transparentColor
                    radius: collapseButton.width * design.halfRatio
                }
            }
        }

        Rectangle {
            id: featuresArea
            height: design.sidebarFeatureAreaHeight
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: logoArea.bottom
            color: design.appBackgroundColor

            Column {
                id: featuresColumn
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: design.sidebarSectionLeftPadding
                anchors.rightMargin: design.sidebarSectionRightPadding
                anchors.topMargin: design.sidebarSectionTopPadding
                anchors.bottomMargin: design.sidebarSectionBottomPadding
                spacing: design.sidebarButtonVerticalGap

                Rectangle {
                    id: newChatButton
                    width: parent.width
                    height: (featuresColumn.height - featuresColumn.spacing) * design.halfRatio
                    color: design.appBackgroundColor
                    radius: design.newChatButtonCornerRadius
                    border.color: design.controlBorderColor
                    border.width: design.featureButtonBorderWidth

                    Row {
                        anchors.left: parent.left
                        anchors.leftMargin: design.featureButtonHorizontalPadding
                        anchors.verticalCenter: parent.verticalCenter
                        spacing: design.featureButtonTextIconSpacing

                        Image {
                            id: newChatButtonIcon
                            width: design.featureButtonIconSize
                            height: design.featureButtonIconSize
                            source: design.newChatButtonIconSource
                            sourceSize.width: design.featureButtonIconSize
                            sourceSize.height: design.featureButtonIconSize
                            fillMode: Image.PreserveAspectFit
                            visible: status === Image.Ready
                        }

                        Text {
                            text: qsTr("New Chat")
                            color: design.primaryTextColor
                            font.family: design.primaryFontFamily
                            font.pixelSize: design.featureButtonFontSize
                            font.weight: design.boldFontWeight
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }

                Rectangle {
                    id: libraryButton
                    width: parent.width
                    height: (featuresColumn.height - featuresColumn.spacing) * design.halfRatio
                    color: design.appBackgroundColor
                    radius: design.libraryButtonCornerRadius
                    border.color: design.controlBorderColor
                    border.width: design.featureButtonBorderWidth

                    Row {
                        anchors.left: parent.left
                        anchors.leftMargin: design.featureButtonHorizontalPadding
                        anchors.verticalCenter: parent.verticalCenter
                        spacing: design.featureButtonTextIconSpacing

                        Image {
                            id: libraryButtonIcon
                            width: design.featureButtonIconSize
                            height: design.featureButtonIconSize
                            source: design.libraryButtonIconSource
                            sourceSize.width: design.featureButtonIconSize
                            sourceSize.height: design.featureButtonIconSize
                            fillMode: Image.PreserveAspectFit
                            visible: status === Image.Ready
                        }

                        Text {
                            text: qsTr("Library")
                            color: design.primaryTextColor
                            font.family: design.primaryFontFamily
                            font.pixelSize: design.featureButtonFontSize
                            font.weight: design.boldFontWeight
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }
        }

        Rectangle {
            id: chatsHeader
            height: design.sidebarChatsHeaderHeight
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: featuresArea.bottom
            color: design.appBackgroundColor

            Text {
                id: chatsText
                text: qsTr("Chats")
                color: design.primaryTextColor
                font.family: design.primaryFontFamily
                font.pixelSize: design.chatsHeaderTextFontSize
                font.weight: design.boldFontWeight
                anchors.left: parent.left
                anchors.leftMargin: design.sidebarSectionLeftPadding
                anchors.verticalCenter: parent.verticalCenter
            }

            Text {
                id: chatsArrow
                text: qsTr(">")
                color: design.primaryTextColor
                font.family: design.primaryFontFamily
                font.pixelSize: design.chatsHeaderArrowFontSize
                font.weight: design.boldFontWeight
                rotation: design.chatsHeaderArrowRotation
                anchors.left: chatsText.right
                anchors.leftMargin: design.chatsHeaderArrowLeftMargin
                anchors.verticalCenter: parent.verticalCenter
            }

            Button {
                id: chatNewButton
                width: design.chatNewButtonSize
                height: design.chatNewButtonSize
                anchors.right: parent.right
                anchors.rightMargin: design.sidebarSectionRightPadding
                anchors.verticalCenter: parent.verticalCenter
                padding: design.iconOnlyButtonPadding
                flat: true
                display: AbstractButton.IconOnly
                icon.source: design.chatNewButtonIconSource
                icon.width: design.chatNewButtonIconSize
                icon.height: design.chatNewButtonIconSize
                icon.color: design.chatNewButtonIconColor
                background: Rectangle {
                    color: chatNewButton.hovered ? design.panelHoverColor : design.transparentColor
                    radius: chatNewButton.width * design.halfRatio
                }
            }
        }

        Rectangle {
            id: chatHistoryArea
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: chatsHeader.bottom
            anchors.bottom: accountArea.top
            color: design.appBackgroundColor

            ScrollView {
                id: chatScroll
                anchors.fill: parent
                contentWidth: availableWidth
                clip: true

                Column {
                    id: chatColumn
                    width: chatScroll.availableWidth
                    spacing: design.chatHistoryListGap
                }

                ScrollBar.vertical: ScrollBar {
                    policy: ScrollBar.AsNeeded
                }
            }
        }

        Rectangle {
            id: accountArea
            height: design.sidebarAccountAreaHeight
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            color: design.appBackgroundColor

            Button {
                id: accountButton
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: design.accountButtonLeftMargin
                anchors.rightMargin: design.accountButtonRightMargin
                anchors.topMargin: design.accountButtonTopMargin
                anchors.bottomMargin: design.accountButtonBottomMargin
                text: qsTr("Account")
                font.family: design.primaryFontFamily
                font.pixelSize: design.accountButtonFontSize
                font.weight: design.boldFontWeight

                contentItem: Text {
                    text: qsTr("Account")
                    color: design.primaryTextColor
                    font.family: design.primaryFontFamily
                    font.pixelSize: design.accountButtonFontSize
                    font.weight: design.boldFontWeight
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                background: Rectangle {
                    color: accountButton.hovered ? design.panelHoverColor : design.appBackgroundColor
                    radius: design.accountButtonCornerRadius
                    border.color: design.controlBorderColor
                    border.width: design.accountButtonBorderWidth
                }
            }
        }
    }

    Rectangle {
        id: mainArea
        anchors.left: sidebar.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: design.appBackgroundColor

        Rectangle {
            id: modeSelector
            property string selectedMode: "chat"
            height: design.modeSelectorHeight
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            color: design.appBackgroundColor

            Rectangle {
                id: modeSelectorBottomSeparator
                height: design.modeSelectorBottomSeparatorHeight
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                color: design.separatorColor
                opacity: design.separatorOpacity
                z: 5
            }

            Rectangle {
                id: selector
                width: design.modeSwitchWidth
                height: design.modeSwitchHeight
                anchors.centerIn: parent
                radius: design.modeSwitchCornerRadius
                color: design.appBackgroundColor
                border.color: design.controlBorderColor
                border.width: design.modeSwitchBorderWidth

                Rectangle {
                    id: selectedBackground
                    width: parent.width * design.modeSwitchSelectedBackgroundWidthRatio
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.left: modeSelector.selectedMode === "chat" ? parent.left : undefined
                    anchors.right: modeSelector.selectedMode === "work" ? parent.right : undefined
                    color: design.panelBackgroundColor
                    radius: design.modeSwitchSelectedBackgroundCornerRadius
                    border.color: design.controlBorderColor
                    border.width: design.modeSwitchBorderWidth
                }

                Button {
                    id: chatButton
                    width: parent.width * design.modeButtonWidthRatio
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    text: qsTr("Chat")
                    flat: true


                    contentItem: Text {
                        text: qsTr("Chat")
                        color: design.primaryTextColor
                        font.family: design.primaryFontFamily
                        font.pixelSize: design.modeButtonFontSize
                        font.weight: design.boldFontWeight
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    background: Rectangle {
                        color: design.transparentColor
                    }
                }

                Button {
                    id: workButton
                    width: parent.width * design.modeButtonWidthRatio
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    text: qsTr("Work")
                    flat: true


                    contentItem: Text {
                        text: qsTr("Work")
                        color: design.primaryTextColor
                        font.family: design.primaryFontFamily
                        font.pixelSize: design.modeButtonFontSize
                        font.weight: design.boldFontWeight
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    background: Rectangle {
                        color: design.transparentColor
                    }
                }
            }
        }

        Rectangle {
            id: chatAreaRoot
            property string username: "{User}"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: modeSelector.bottom
            anchors.bottom: parent.bottom
            color: design.appBackgroundColor

            Column {
                id: welcomeContent
                width: parent.width * design.welcomeContentWidthRatio
                spacing: design.welcomeContentGap
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Text {
                    id: welcomeText
                    width: parent.width
                    text: qsTr("How Can I Help, ") + chatAreaRoot.username
                    color: design.primaryTextColor
                    font.family: design.primaryFontFamily
                    font.pixelSize: design.welcomeTextFontSize
                    font.weight: design.standardFontWeight
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                }

                Rectangle {
                    id: inputContainer
                    width: parent.width
                    height: design.messageInputContainerHeight
                    radius: design.messageInputContainerCornerRadius
                    color: design.appBackgroundColor
                    border.color: design.controlBorderColor
                    border.width: design.messageInputContainerBorderWidth

                    TextField {
                        id: messageInput
                        anchors.left: parent.left
                        anchors.right: sendButton.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: design.messageInputLeftMargin
                        anchors.rightMargin: design.messageInputRightMargin
                        placeholderText: qsTr("Ask RavenAI")
                        placeholderTextColor: design.secondaryTextColor
                        color: design.primaryTextColor
                        font.family: design.primaryFontFamily
                        font.pixelSize: design.messageInputFontSize

                        background: Rectangle {
                            color: design.transparentColor
                        }
                    }

                    Button {
                        id: sendButton
                        width: design.sendButtonSize
                        height: design.sendButtonSize
                        anchors.right: parent.right
                        anchors.rightMargin: design.sendButtonRightMargin
                        anchors.verticalCenter: parent.verticalCenter
                        padding: design.iconOnlyButtonPadding
                        flat: true
                        display: AbstractButton.IconOnly
                        icon.source: design.sendButtonIconSource
                        icon.width: design.sendButtonIconSize
                        icon.height: design.sendButtonIconSize
                        icon.color: design.sendButtonIconColor
                        background: Rectangle {
                            color: sendButton.hovered ? design.panelHoverColor : design.transparentColor
                            radius: sendButton.width * design.halfRatio
                        }
                    }
                }
            }
        }
    }

    Rectangle {
        id: sidebarRightSeparator
        x: design.sidebarRightSeparatorX
        width: design.sidebarRightSeparatorWidth
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: design.separatorColor
        opacity: design.separatorOpacity
        z: 10
    }
}
