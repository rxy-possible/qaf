# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = testPlugin
win32:DESTDIR = $$PWD/../../../output/bin/win32/plugin
unix:DESTDIR = $$PWD/../../../output/bin/unix/plugin
QT += core widgets gui
CONFIG += debug_and_release
DEFINES += QT_DLL TESTPLUGIN_LIB QT_WIDGETS_LIB
INCLUDEPATH += $$PWD \
    $$PWD/../../QAFCore \
    $$PWD/../../Utils

LIBS += -L"$$PWD/../../../output/lib"
DEPENDPATH += $$PWD
CONFIG(debug,debug|release){
    win32{
        TARGET=$$join(TARGET,,,d)
        LIBS += -lQAFCored
    }

    unix{
        TARGET=$$join(TARGET,,,_debug)
        LIBS += -lQAFCore_debug
    }
}

CONFIG(release,release|debug){
    LIBS += -lQAFCore
}
include(testPlugin.pri)
