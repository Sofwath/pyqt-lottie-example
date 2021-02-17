from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtWidgets import QApplication
from PySide2 import QtCore
import sys


def main():
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load('qtpreview.qml')

    if not engine.rootObjects():
        return -1

    return app.exec_()


if __name__ == "__main__":
    sys.exit(main())