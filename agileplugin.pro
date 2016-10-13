QGIS_DIR = $(HOME)/Apps/QGIS
TEMPLATE = lib
CONFIG = qt
QT += xml widgets
LIBS += -L$$QGIS_DIR/lib -lqgis_core -lqgis_gui
INCLUDEPATH += $$QGIS_DIR/include/qgis
SOURCES = agileplugin.cpp
HEADERS = agileplugin.h
DEST = libagileplugin.so
DEFINES += GUI_EXPORT= CORE_EXPORT=
QMAKE_CXXFLAGS += -std=c++0x

DESTDIR = build
OBJECTS_DIR = build/.o
MOC_DIR = build/.moc
RCC_DIR = build/.rcc
UI_DIR = build/.ui

QMAKE_POST_LINK += $$quote(cp build/libagileplugin.so.1.0.0 $$QGIS_DIR/lib/qgis/plugins/libagileplugin.so)

