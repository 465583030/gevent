cdef extern from "ev.c":
    int EV_MINPRI
    int EV_MAXPRI

    int EV_VERSION_MAJOR
    int EV_VERSION_MINOR

    int EV_UNDEF
    int EV_NONE
    int EV_READ
    int EV_WRITE
    int EV__IOFDSET
    int EV_TIMER
    int EV_PERIODIC
    int EV_SIGNAL
    int EV_CHILD
    int EV_STAT
    int EV_IDLE
    int EV_PREPARE
    int EV_CHECK
    int EV_EMBED
    int EV_FORK
    int EV_CLEANUP
    int EV_ASYNC
    int EV_CUSTOM
    int EV_ERROR

    int EVFLAG_AUTO
    int EVFLAG_NOENV
    int EVFLAG_FORKCHECK
    int EVFLAG_NOINOTIFY
    int EVFLAG_SIGNALFD
    int EVFLAG_NOSIGMASK

    int EVBACKEND_SELECT
    int EVBACKEND_POLL
    int EVBACKEND_EPOLL
    int EVBACKEND_KQUEUE
    int EVBACKEND_DEVPOLL
    int EVBACKEND_PORT
    int EVBACKEND_IOCP
    int EVBACKEND_ALL
    int EVBACKEND_MASK

    int EVRUN_NOWAIT
    int EVRUN_ONCE

    int EVBREAK_CANCEL
    int EVBREAK_ONE
    int EVBREAK_ALL

    struct ev_loop:
        int activecnt

    struct ev_io:
        int fd
        int events

    struct ev_timer:
        double at

    struct ev_signal:
        pass

    struct ev_idle:
        pass

    struct ev_prepare:
        pass

    int ev_version_major()
    int ev_version_minor()

    unsigned int ev_supported_backends()
    unsigned int ev_recommended_backends()
    unsigned int ev_embeddable_backends()

    double ev_time()
    void ev_set_syserr_cb(void *)

    int ev_priority(void*)
    void ev_set_priority(void*, int)

    int ev_is_pending(void*)
    int ev_is_active(void*)
    void ev_io_init(ev_io*, void* callback, int fd, int events)
    void ev_io_start(ev_loop*, ev_io*)
    void ev_io_stop(ev_loop*, ev_io*)
    void ev_feed_event(ev_loop*, void*, int)

    void ev_timer_init(ev_timer*, void* callback, double, double)
    void ev_timer_start(ev_loop*, ev_timer*)
    void ev_timer_stop(ev_loop*, ev_timer*)

    void ev_signal_init(ev_signal*, void* callback, int)
    void ev_signal_start(ev_loop*, ev_signal*)
    void ev_signal_stop(ev_loop*, ev_signal*)

    void ev_idle_init(ev_idle*, void* callback)
    void ev_idle_start(ev_loop*, ev_idle*)
    void ev_idle_stop(ev_loop*, ev_idle*)

    void ev_prepare_init(ev_prepare*, void* callback)
    void ev_prepare_start(ev_loop*, ev_prepare*)
    void ev_prepare_stop(ev_loop*, ev_prepare*)

    ev_loop* ev_default_loop(unsigned int flags)
    ev_loop* ev_loop_new(unsigned int flags)
    void ev_loop_destroy(ev_loop*)
    void ev_loop_fork(ev_loop*)
    int ev_is_default_loop(ev_loop*)
    unsigned int ev_iteration(ev_loop*)
    unsigned int ev_depth(ev_loop*)
    unsigned int ev_backend(ev_loop*)
    void ev_verify(ev_loop*)
    void ev_run(ev_loop*, int flags) nogil

    double ev_now(ev_loop*)
    void ev_now_update(ev_loop*)

    void ev_ref(ev_loop*)
    void ev_unref(ev_loop*)
    void ev_break(ev_loop*, int)