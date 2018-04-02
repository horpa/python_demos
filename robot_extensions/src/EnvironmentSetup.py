import os
import sys


class EnvironmentSetup(object):

    def __init__(self):
        project_libs = os.path.abspath(os.path.dirname(os.path.realpath(__file__)))
        if project_libs not in sys.path:
            sys.path.append(project_libs)

    def foo(self):
        pass
