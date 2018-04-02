from platform_libs import WindowLib
from platform_libs import MacLib


class PlatformFactoryLib(object):
    known_platforms = {}

    def __init__(self, platform_name):
        PlatformFactoryLib.register_platform(WindowLib)
        PlatformFactoryLib.register_platform(MacLib)
        self.__class__ = PlatformFactoryLib.get_class_by_name(platform_name)

    @classmethod
    def register_platform(cls, platform_lib):
        cls.known_platforms[platform_lib.name] = platform_lib

    @classmethod
    def get_class_by_name(cls, platform_name):
        if isinstance(platform_name, unicode):
            platform_name = platform_name.decode('utf-8')

        if platform_name in cls.known_platforms:
            return cls.known_platforms[platform_name]
        else:
            error_message = "Unknown platform: {}".format(platform_name)
            raise Exception(error_message)
