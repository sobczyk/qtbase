CONFIG += testcase parallel_test
TARGET = tst_qdbustype
QT = core-private dbus-private testlib
SOURCES += tst_qdbustype.cpp
contains(QT_CONFIG, dbus-linked) {
    DEFINES += QT_LINKED_LIBDBUS
    LIBS += $$QMAKE_LIBS_DBUS
    QMAKE_CXXFLAGS += $$QMAKE_CFLAGS_DBUS
} else {
    SOURCES += ../../../../src/dbus/qdbus_symbols.cpp
}
