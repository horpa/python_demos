from threading import current_thread

__all__ = ['first_robot_keyword', 'thread_name']


def first_robot_keyword():
    msg = "Among our chief weapons are: fear, surprise, ruthless efficiency, and near fanatical devotion to the Pope!"
    print "*{level}* {message}".format(level="WARN", message=msg)


def thread_name():
    print '*WARN* Running in thread "%s".' % current_thread().name
