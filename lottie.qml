import QtQuick 2.13
import QtQuick.Window 2.12
import Qt.labs.settings 1.0

import Qt.labs.lottieqt 1.0

Window {
    id:window
    visible: true
    width: 500
    height: 500
    title: qsTr("PyQt Lottie Demo")
    
    Item {
        id: item
        width: 500
        height: 500
        visible: true

        LottieAnimation {
            id: lottie
            quality: LottieAnimation.HighQuality	
            source: "animation.json"
            autoPlay: true
            loops: LottieAnimation.Infinite 
        }
    }
 
}
