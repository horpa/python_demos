from abc import ABCMeta, abstractmethod


class Platform:
    __metaclass__ = ABCMeta

    @abstractmethod
    def collect_logs(self):
        pass
