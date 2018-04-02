from abc import ABCMeta, abstractmethod


class Platform:
    __metaclass__ = ABCMeta

    default_log_level = "WARN"

    @abstractmethod
    def collect_logs(self):
        pass


class WindowLib(Platform):

    name = "windows"

    def collect_logs(self):
        print "*{}* Collecting logs on: {}".format(self.default_log_level, self.name)


class MacLib(Platform):

    name = "osx"

    def collect_logs(self):
        print "*{}* {} logs has been collected.".format(self.default_log_level, self.name)
