class GlobalLibWithArgs(object):
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def __init__(self, name):
        self.name = name

    def print_name(self):
        print "*WARN* {name}".format(name=self.name)
