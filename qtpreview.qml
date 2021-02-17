import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.0
import Qt.labs.settings 1.0
import Qt.labs.lottieqt 1.0

ApplicationWindow {
    id: rootId
    visible: true
    title: "Lottie Preview"
    property int margin: 16
    minimumWidth: 400
    minimumHeight: 400


    function showLottie(filename) {
        var component = Qt.createComponent("lottie.qml")
        var wd = component.createObject(rootId)
        wd.lottie_url = filename
        wd.show()
    }


    Loader {
        id: lottieloader
        active: false
        source: "lottie.qml"
        focus: true

    }

    FileDialog {
        id: fileDialog
        title: "Choose Lottie"
        selectFolder: false
        selectMultiple: false
        folder: shortcuts.home
        onAccepted: {
            showLottie(fileDialog.fileUrl)
        }
    }


    DropArea {
        id: dropArea
        enabled: true
        anchors.fill: parent
        anchors.margins: margin
        onDropped:{
            showLottie(drop.text)
        }


        MouseArea {
            onClicked: fileDialog.open();
            anchors.fill: parent

            Rectangle {
                anchors.fill: parent
                color: "#3b000000"
                visible: dropArea.containsDrag
                border.width: 2
                border.color: "#3bFFFFFF"
                radius: 22
            }

            Label {
                text: "Click or Drop .JSON Here"
                anchors.centerIn: parent
                font.pixelSize: 22
            }

        }

    } // DropArea
}