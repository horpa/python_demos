import platform


class WindowsLib(platform.Platform):

    def collect_logs(self):
        print "*WARN* Collecting logs on: Windows"
