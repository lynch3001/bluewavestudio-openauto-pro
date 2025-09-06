
#ifndef BLUEZQT_EXPORT_H
#define BLUEZQT_EXPORT_H

#ifdef BLUEZQT_STATIC_DEFINE
#  define BLUEZQT_EXPORT
#  define BLUEZQT_NO_EXPORT
#else
#  ifndef BLUEZQT_EXPORT
#    ifdef KF5BluezQt_EXPORTS
        /* We are building this library */
#      define BLUEZQT_EXPORT __attribute__((visibility("default")))
#    else
        /* We are using this library */
#      define BLUEZQT_EXPORT __attribute__((visibility("default")))
#    endif
#  endif

#  ifndef BLUEZQT_NO_EXPORT
#    define BLUEZQT_NO_EXPORT __attribute__((visibility("hidden")))
#  endif
#endif

#ifndef BLUEZQT_DEPRECATED
#  define BLUEZQT_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef BLUEZQT_DEPRECATED_EXPORT
#  define BLUEZQT_DEPRECATED_EXPORT BLUEZQT_EXPORT BLUEZQT_DEPRECATED
#endif

#ifndef BLUEZQT_DEPRECATED_NO_EXPORT
#  define BLUEZQT_DEPRECATED_NO_EXPORT BLUEZQT_NO_EXPORT BLUEZQT_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef BLUEZQT_NO_DEPRECATED
#    define BLUEZQT_NO_DEPRECATED
#  endif
#endif

#endif /* BLUEZQT_EXPORT_H */
