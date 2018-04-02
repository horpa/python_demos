from robot.libraries.BuiltIn import BuiltIn


class ImporterLib(object):

    def __init__(self):
        self.known_platforms = {
            'windows':  'polymorph.platform_libs.WindowLib',
            'osx':      'polymorph.platform_libs.MacLib'
        }

    def import_platform_lib(self, platform_name):
        if isinstance(platform_name, unicode):
            platform = platform_name.decode('utf-8')
        platform = platform.lower()

        if platform in self.known_platforms:
            BuiltIn().import_library(self.known_platforms[platform])
        else:
            error_message = "Unknown platform: {}".format(platform_name)
            raise Exception(error_message)
