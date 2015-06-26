components_qml_folder.source = ../third_party/components/qml
components_qml_folder.target = .
DEPLOYMENTFOLDERS += components_qml_folder

android {
    QT += androidextras

    SOURCES += \
        $$PWD/src/jniutils.cpp

    HEADERS += \
        $$PWD/src/jniutils.h

#    CONFIG -= android_install
}

#CONFIG += staticlib

HEADERS += \
    $$PWD/src/components_plugin.h \
    $$PWD/src/screenvalues.h \
    $$PWD/src/updatechecker.h \
    $$PWD/src/connectivitymanager.h \
    $$PWD/src/packagemanager.h \
    $$PWD/src/downloadmanager.h \
    $$PWD/src/applicationinfo.h

SOURCES += \
    $$PWD/src/components_plugin.cpp \
    $$PWD/src/screenvalues.cpp \
    $$PWD/src/updatechecker.cpp \
    $$PWD/src/connectivitymanager.cpp \
    $$PWD/src/packagemanager.cpp \
    $$PWD/src/downloadmanager.cpp \
    $$PWD/src/applicationinfo.cpp


OTHER_FILES = $$PWD/qmldir \
    $$PWD/qml/Dialog.qml \
    $$PWD/qml/FlatButtonStyle.qml \
    $$PWD/qml/ImageButton.qml \
    $$PWD/qml/ItemHighlighter.qml \
    $$PWD/qml/Page.qml \
    $$PWD/qml/SubtractMask.qml \
    $$PWD/qml/Theme.qml \
    $$PWD/qml/TitleBar.qml \
    $$PWD/qml/UpdateDialog.qml \
    $$PWD/README.md \
    $$PWD/components.qmltypes

#check for the models folder from git submodule
contains(DEFINES,EXT_MODELS){
    ##checks if the Model folder exists
    exists("Models"){
        include(Models/Models.pri)
    }
}

INCLUDEPATH += $$PWD/src
INCLUDEPATH += $$PWD
