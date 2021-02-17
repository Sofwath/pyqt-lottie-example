import QtQuick 2.15
import QtQuick.Window 2.15
import Qt.labs.settings 1.0

import Qt.labs.lottieqt 1.0


Window {
    id:window
    visible: true
    width: 500
    height: 500
    title: qsTr("PyQt Lottie Demo")
    property url lottie_url : "animation.json"


    Item {
        id: item
        width: 500
        height: 500
        visible: true


        LottieAnimation {
            id: lottie
            quality: LottieAnimation.HighQuality	
            source: lottie_url
            autoPlay: true
            loops: LottieAnimation.Infinite 
        }
    }
 
}
