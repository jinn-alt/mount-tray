#ifndef VERSION_H
#define VERSION_H

/*
 * Consts:
 *  APP_VERSION      - main application version, can be redefined from command line
 *  APP_REVISION     - additional application version (like git build), can be redefined from command line
 *  APP_VERSION_FULL - version and revision info
 */

#ifndef  APP_VERSION
#   define APP_VERSION "1.2.6"
#endif

#ifdef GIT
#   include "gitinfo.h"
#   ifndef APP_REVISION
#       define APP_REVISION "git" GIT_REVISION
#   endif
#endif

#if defined(APP_REVISION)
#   define APP_VERSION_FULL APP_VERSION "-" APP_REVISION
#else
#   define APP_VERSION_FULL APP_VERSION
#endif

#endif // VERSION_H
