/** =============================================================================================

    This file is a part of "%ProjectName%" project
    http://hatred.homelinux.net

    @date   2010-%MONTH%-%DAY%
    @brief

    Copyright (C) 2010 by hatred <>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the version 2 of GNU General Public License as
    published by the Free Software Foundation.

    For more information see LICENSE and LICENSE.ru files

   ============================================================================================== */

#include <QApplication>
#include <QtDBus>

#include "mounttrayapp.h"

int main(int argc, char *argv[])
{
    MountTrayApp app(argc, argv);
    return app.exec();
}
