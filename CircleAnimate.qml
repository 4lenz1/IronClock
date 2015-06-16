import QtQuick 2.0

DrawCircle{
    ParallelAnimation{
        id: aniCircleRotation
        running: false
        NumberAnimation {
            target: circle
            //running: true
            property: "rotation"
            duration: 5000
            from : 5
            to : 365
            loops: Animation.Infinite
            // easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: circle1
            //  running: true
            property: "rotation"
            duration: 5000
            from : 60 + 5
            to : 360 + 60 + 5
            loops: Animation.Infinite
            // easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: circle2
            // running: true
            property: "rotation"
            duration: 5000
            from : 120 + 5
            to : 360 + 120 + 5
            loops: Animation.Infinite
            //  easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: circle3
            running: true
            property: "rotation"
            duration: 5000
            from : 180 + 5
            to : 360 + 180 + 5
            loops: Animation.Infinite
            //  easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: circle4
            //  running: true
            property: "rotation"
            duration: 5000
            from : 240 + 5
            to : 360 + 240 + 5
            loops: Animation.Infinite
            //   easing.type: Easing.InOutQuad
        }
        NumberAnimation {
            target: circle5
            running: true
            property: "rotation"
            duration: 5000
            from : 300 + 5
            to : 360 + 300 + 5
            loops: Animation.Infinite
            //   easing.type: Easing.InOutQuad
        }
    }// end ParallelAnimation
}
