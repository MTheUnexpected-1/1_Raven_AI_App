cmake_minimum_required(VERSION 3.16)

project(RavenAI VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


# ============================================================
# FIND QT
# ============================================================

find_package(Qt6 REQUIRED COMPONENTS
    Quick
    QuickControls2
)


# ============================================================
# QT PROJECT SETUP
# ============================================================

qt_standard_project_setup(REQUIRES 6.8)


# ============================================================
# THEME.QML IS A SINGLETON
# ============================================================

set_source_files_properties(
    qml/Theme.qml
    PROPERTIES
        QT_QML_SINGLETON_TYPE TRUE
)


# ============================================================
# CREATE THE APPLICATION
# ============================================================

qt_add_executable(RavenAI
    src/main.cpp
)


# ============================================================
# QML FILES
# ============================================================

qt_add_qml_module(RavenAI
    URI RavenAI
    VERSION 1.0

    QML_FILES
        qml/MainScreen.qml
        qml/Theme.qml
        qml/components/Sidebar.qml
        qml/components/ChatArea.qml
        qml/components/ModeSelector.qml

    RESOURCES
        resources/icons/close_sidebar.svg
        resources/icons/libary.svg
        resources/icons/newchat.svg
        resources/icons/open_sidebar.svg
        resources/icons/search.svg
        resources/icons/send.svg
        resources/icons/settings.svg
)


# ============================================================
# LINK QT TO THE APPLICATION
# ============================================================

target_link_libraries(RavenAI
    PRIVATE
        Qt6::Quick
        Qt6::QuickControls2
)