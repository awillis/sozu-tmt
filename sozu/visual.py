import sys

from pathlib import Path
from PySide2.QtCore import QUrl
from PySide2.QtGui import Qt, QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


def main():

    qml = str(Path(__file__).parent.joinpath('main.qml'))
    app = QGuiApplication(sys.argv)
    app.setAttribute(Qt.AA_EnableHighDpiScaling)

    # per matplotlib, setting QApplication as parent prevents segfault on app exit
    engine = QQmlApplicationEngine(parent=app)

    engine.load(QUrl.fromLocalFile(qml))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
