import platform


class OsxLib(platform.Platform):

    def collect_logs(self):
        print "*WARN* {} OSX logs has been collected."
