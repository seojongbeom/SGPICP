# qimhangul-qt5 project file

TEMPLATE = lib
TARGET = hangulplatforminputcontextplugin
VERSION = 0.0.1
DISTFILES += ChangeLog ChangeLog.old COPYING AUTHORS README hangul.json
QT_PLUGIN_DIR = $$[QT_INSTALL_PLUGINS]

target.path = $${QT_PLUGIN_DIR}/platforminputcontexts
INSTALLS += target

CONFIG += debug plugin qt thread
PLUGIN_TYPE = platforminputcontexts
PLUGIN_CLASS_NAME = QHangulPlatformInputContextPlugin

QT += gui-private widgets

# Input
INCLUDEPATH += .
HEADERS += \
    main.h \
    candidatelist.h \
    qhangulplatforminputcontext.h

SOURCES += \
    main.cpp \
    candidatelist.cpp \
    qhangulplatforminputcontext.cpp

CONFIG += link_pkgconfig
PKGCONFIG += libhangul

