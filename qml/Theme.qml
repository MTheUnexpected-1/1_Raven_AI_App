pragma Singleton

import QtQuick

QtObject {
    id: theme

    /*
        ============================================================
        THEME SETTINGS
        ============================================================
    */

    property string currentTheme: "purple"

    property string selectedFont: "Artifika"

    property real textScale: 1.0


    /*
        ============================================================
        COLORS
        ============================================================
    */

    readonly property color background:
        currentTheme === "light" ? "#f5f5f5" :
        currentTheme === "oled" ? "#000000" :
        "#220153"

    readonly property color surface:
        currentTheme === "light" ? "#ffffff" :
        currentTheme === "oled" ? "#111111" :
        "#5a168e"

    readonly property color surfaceHover:
        currentTheme === "light" ? "#e8e8e8" :
        currentTheme === "oled" ? "#1c1c1c" :
        "#361065"

    readonly property color textPrimary:
        currentTheme === "light" ? "#111111" :
        "#ffffff"

    readonly property color textSecondary:
        currentTheme === "light" ? "#555555" :
        "#cfcfcf"

    readonly property color accent:
        currentTheme === "light" ? "#006bd6" :
        currentTheme === "oled" ? "#00a2ff" :
        "#0080ff"

    readonly property color border:
        currentTheme === "light" ? "#444444" :
        "#ffffff"

    readonly property color transparent:
        "transparent"


    /*
        ============================================================
        FONT FAMILIES
        ============================================================
    */

    readonly property string fontPrimary: selectedFont

    readonly property string fontSecondary: "Arial"


    /*
        ============================================================
        TEXT SIZES
        ============================================================
    */

    readonly property real textTiny:
        12 * textScale

    readonly property real textSmall:
        14 * textScale

    readonly property real textNormal:
        18 * textScale

    readonly property real textMedium:
        24 * textScale

    readonly property real textLarge:
        32 * textScale

    readonly property real textTitle:
        42 * textScale

    readonly property real textHeading:
        60 * textScale


    /*
        ============================================================
        FONT WEIGHTS
        ============================================================
    */

    readonly property int weightNormal:
        Font.Normal

    readonly property int weightMedium:
        Font.Medium

    readonly property int weightBold:
        Font.Bold


    /*
        ============================================================
        SPACING
        ============================================================
    */

    readonly property int spacingTiny: 4
    readonly property int spacingSmall: 8
    readonly property int spacingMedium: 16
    readonly property int spacingLarge: 24
    readonly property int spacingXLarge: 32


    /*
        ============================================================
        BORDERS
        ============================================================
    */

    readonly property int borderThin: 1
    readonly property int borderNormal: 2


    /*
        ============================================================
        RADIUS
        ============================================================
    */

    readonly property int radiusSmall: 8
    readonly property int radiusMedium: 16
    readonly property int radiusLarge: 30


    /*
        ============================================================
        ICON SIZE
        ============================================================
    */

    readonly property int iconSmall: 24
    readonly property int iconMedium: 40
    readonly property int iconLarge: 50
}