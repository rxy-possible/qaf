# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = QtCommonModel
DESTDIR = $$PWD/../../lib
QT += core
CONFIG += debug_and_release
DEFINES += QT_DLL QTCOMMONMODEL_LIB
INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD
CONFIG(debug,debug|release){
    win32:TARGET=$$join(TARGET,,,d)
    unix:TARGET=$$join(TARGET,,,_debug)
}

CONFIG(release,release|debug){

}
include(QtCommonModel.pri)
