import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0


Item{
    id:itemDrawCircle
    width: 640
    height: 480
    property alias itemDrawCircle: itemDrawCircle
    property alias groupCircle: groupCircle;
    property alias circle: circle
    property alias circle1: circle1
    property alias circle2: circle2
    property alias circle3: circle3
    property alias circle4: circle4
    property alias circle5: circle5

    Rectangle{
        id : groupCircle
        width: core.width
        height: width
        color: "transparent"
        anchors.centerIn: parent

        NumberAnimation {
            target: groupCircle
            property: "rotation"
            duration: 5000
            running : true
            from :0
            to : 360
            loops: Animation.Infinite;
            easing.type: Easing.OutBack
        }
        Circle {
            id: circle;
            anchors.fill: parent;
            color: 'orange';
            border: 20;
            angle: 0;

            Behavior on angle {
                NumberAnimation {
                    duration: 2000;
                    easing.type: Easing.OutCubic;
                }
            }
        }
        Circle {
            id: circle1;
            anchors.fill: parent;
            color: 'orange';
            border: 20;
            angle: 0;

            Behavior on angle {
                NumberAnimation {
                    duration: 2000;
                    easing.type: Easing.OutCubic;
                }
            }

        }
        Circle {
            id: circle2;
            anchors.fill: parent;
            color: 'orange';
            border: 20;
            angle: 0;

            Behavior on angle {
                NumberAnimation {
                    duration: 2000;
                    easing.type: Easing.OutCubic;
                }
            }
        }
        Circle {
            id: circle3;
            anchors.fill: parent;
            color: 'orange';
            border: 20;
            angle: 0;

            Behavior on angle {
                NumberAnimation {
                    duration: 2000;
                    easing.type: Easing.OutCubic;
                }
            }
        }
        Circle {
            id: circle4;
            anchors.fill: parent;
            color: 'orange';
            border: 20;
            angle: 0;

            Behavior on angle {
                NumberAnimation {
                    duration: 2000;
                    easing.type: Easing.OutCubic;
                }
            }
        }
        Circle {
            id: circle5;
            anchors.fill: parent;
            color: 'orange';
            border: 20;
            angle: 0;

            Behavior on angle {
                NumberAnimation {
                    duration: 2000;
                    easing.type: Easing.OutCubic;
                }
            }
        }

    } // end Rectangle
//        ParallelAnimation{
//            id: aniCircleRotation
//            running: false
//            NumberAnimation {
//                target: circle
//                //running: true
//                property: "rotation"
//                duration: 5000
//                from : 5
//                to : 365
//                loops: Animation.Infinite
//                // easing.type: Easing.InOutQuad
//            }
//            NumberAnimation {
//                target: circle1
//                //  running: true
//                property: "rotation"
//                duration: 5000
//                from : 60 + 5
//                to : 360 + 60 + 5
//                loops: Animation.Infinite
//                // easing.type: Easing.InOutQuad
//            }
//            NumberAnimation {
//                target: circle2
//                // running: true
//                property: "rotation"
//                duration: 5000
//                from : 120 + 5
//                to : 360 + 120 + 5
//                loops: Animation.Infinite
//                //  easing.type: Easing.InOutQuad
//            }
//            NumberAnimation {
//                target: circle3
//                running: true
//                property: "rotation"
//                duration: 5000
//                from : 180 + 5
//                to : 360 + 180 + 5
//                loops: Animation.Infinite
//                //  easing.type: Easing.InOutQuad
//            }
//            NumberAnimation {
//                target: circle4
//                //  running: true
//                property: "rotation"
//                duration: 5000
//                from : 240 + 5
//                to : 360 + 240 + 5
//                loops: Animation.Infinite
//                //   easing.type: Easing.InOutQuad
//            }
//            NumberAnimation {
//                target: circle5
//                running: true
//                property: "rotation"
//                duration: 5000
//                from : 300 + 5
//                to : 360 + 300 + 5
//                loops: Animation.Infinite
//                //   easing.type: Easing.InOutQuad
//            }
       // }// end ParallelAnimation
}
