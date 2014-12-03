CONFIG += qt plugin

android {
    QT += androidextras

    SOURCES += \
        src/jniutils.cpp

    HEADERS += \
        src/jniutils.h

    CONFIG -= android_install
}


SOURCES += \
    src/components_plugin.cpp \
    src/screenvalues.cpp \
    src/updatechecker.cpp \
    src/connectivitymanager.cpp \
    src/packagemanager.cpp \
    src/downloadmanager.cpp \
    src/applicationinfo.cpp

HEADERS += \
    src/components_plugin.h \
    src/screenvalues.h \
    src/updatechecker.h \
    src/connectivitymanager.h \
    src/packagemanager.h \
    src/downloadmanager.h \
    src/applicationinfo.h

OTHER_FILES = qmldir \
    qml/Dialog.qml \
    qml/FlatButtonStyle.qml \
    qml/ImageButton.qml \
    qml/ItemHighlighter.qml \
    qml/Page.qml \
    qml/SubtractMask.qml \
    qml/Theme.qml \
    qml/TitleBar.qml \
    qml/UpdateDialog.qml \
    README.md \
    components.qmltypes

#check for the models folder from git submodule
exists("Models"){
    include(Models/Models.pri)
}

