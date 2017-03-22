# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = UIPlugin
win32:DESTDIR = $$PWD/../../output/bin/win32/plugin
unix:DESTDIR = $$PWD/../../output/bin/unix/plugin
QT += core widgets gui
CONFIG += debug_and_release
DEFINES += QT_DLL QT_WIDGETS_LIB UIPLUGIN_LIB
INCLUDEPATH += $$PWD \
    $$PWD/../QtPropertyBrowser \
    $$PWD/../Utils \
    $$PWD/../QAFCore \
    $$PWD/../QtCommonModel

LIBS += -L"$$PWD/../../output/lib"
DEPENDPATH += $$PWD

CONFIG(debug,debug|release){
    win32:TARGET=$$join(TARGET,,,d)
    unix:TARGET=$$join(TARGET,,,_debug)

    LIBS += -lQAFCored \
        -lQtPropertyBrowserd
}

CONFIG(release,release|debug){
    LIBS += -lQAFCore \
        -lQtPropertyBrowser
}
include(UIPlugin.pri)
