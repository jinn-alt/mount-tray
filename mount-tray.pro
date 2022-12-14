#-------------------------------------------------
#
# Project created by QtCreator 2010-11-10T01:37:08
#
#-------------------------------------------------

QT        += core gui widgets dbus

TARGET     = mount-tray
TEMPLATE   = app

CONFIG    += link_pkgconfig
PKGCONFIG += libudev

#QMAKE_CXXFLAGS += -Wall -Wextra -pedantic

SOURCES += \
    src/mounttrayapp.cpp \
    src/main.cpp \
    src/storagemanager.cpp \
    src/storageitem.cpp \
    src/mount.cpp \
    src/diskmonitor.cpp \
    src/menudiskitem.cpp \
    src/settings.cpp

HEADERS  += \
    src/mounttrayapp.h \
    src/storagemanager.h \
    src/storageitem.h \
    src/mount.h \
    src/diskmonitor.h \
    src/menudiskitem.h \
    src/version.h \
    src/settings.h

RESOURCES += \
    main.qrc

FORMS += \
    src/menudiskitem.ui

TRANSLATIONS += translations/MountTray_ru.ts

target.path = /usr/bin

QMAKE_EXTRA_COMPILERS += lrelease
lrelease.input  = TRANSLATIONS
lrelease.output = ${QMAKE_FILE_BASE}.qm
lrelease.commands = $$[QT_INSTALL_BINS]/lrelease ${QMAKE_FILE_IN} -qm translations/${QMAKE_FILE_BASE}.qm
lrelease.CONFIG += no_link target_predeps
translations.files = translations/MountTray_ru.qm

translations.path = /usr/share/mount-tray/translations
INSTALLS = target translations
