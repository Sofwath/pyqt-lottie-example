from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtWidgets import QApplication
import PySide2.QtCore 
import sys
  
def runLottie():
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load('lottie.qml')
 
    if not engine.rootObjects():
        return -1
 
    return app.exec_()
 
if __name__ == "__main__":
    sys.exit(runLottie())

