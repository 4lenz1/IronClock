import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2


ApplicationWindow {
    visible: true
    width: 640
    height: 480
//Time_counter{
//    timerSec{

//    }
//}
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

    Component.onCompleted: {
        circle.color =circle1.color =
                circle2.color =
                circle3.color =
                circle4.color =
                circle5.color = 'orange'

        circle.angle =
                circle1.angle =
                circle2.angle =
                circle3.angle =
                circle4.angle =
                circle5.angle = 50

        circle.angleOffset = 0 +5
        circle1.angleOffset = 60 +5
        circle2.angleOffset = 120 +5
        circle3.angleOffset = 180 +5
        circle4.angleOffset = 240 +5
        circle5.angleOffset = 300 +5

        //aniCircleRotation.start()
    }
    Rectangle{
        property alias txtTime: txtTime

        transformOrigin: Item.Center
        id:background

        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#00c41a"
            }

            GradientStop {
                position: 0.279
                color: "#035c0f"
            }

            GradientStop {
                position: 0.548
                color: "#038915"
            }

            GradientStop {
                position: 0.738
                color: "#035c0f"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        anchors.fill:  parent
        opacity: 0.7
        antialiasing: false
        Component.onCompleted: {
            aniCoreBorder.start()
            aniCore.start()
            anieffectouter.start()
        } //end  Component.onCompleted

        Rectangle{
            id: coreborder
            color: "transparent"
            anchors.centerIn: parent
            width:parent.height * .4
            height : parent.height * .4
            radius: width * .5
            border.width: 2
            border.color: "#f71616"
            opacity : .7
            ParallelAnimation{
                id: aniCoreBorder
                loops: Animation.Infinite
                // Broder Color Animation
                //                SequentialAnimation{
                //                    ColorAnimation  {
                //                        to: "orange"
                //                        duration: 10000
                //                    }
                //                    ColorAnimation {
                //                        to: "Black"
                //                        duration: 10000
                //                    }
                //                }

                // Broder opacity Animation
                SequentialAnimation{
                    NumberAnimation {
                        target: coreborder
                        running: true
                        property: "opacity"
                        duration: 5000
                        easing.type: Easing.InOutQuad
                        from: .8
                        to: .1
                    }
                    NumberAnimation {
                        target: coreborder
                        running: true
                        property: "opacity"
                        duration: 5000
                        easing.type: Easing.InOutQuad
                        from: .1
                        to: .8
                    }
                } // end SequentialAnimation


            } // end ParallelAnimation
        } // end coreborder
        Rectangle{
            id: core
            anchors.centerIn: parent
            //            x :  (parent.width  / 2 )-  (width / 2 )
            //            y:  (parent.height  / 2 )-  (width / 2 )
            height : coreborder.height - 25
            width : coreborder.width - 25
            color: "#4bd1e1"
            opacity: .7
            radius: width * .5

            MouseArea{
                anchors.fill:  parent
                onClicked: {
                    mouseOnCore.start()
                }
            }

            SequentialAnimation{
                id : mouseOnCore
                ParallelAnimation{
                    NumberAnimation {
                        target: core
                        property: "scale"
                        duration: 500
                        to: 7
                        easing.type: Easing.OutCubic
                    } // End NumberAnimation

                    NumberAnimation {
                        target: core
                        property: "opacity"
                        duration: 500
                        to : .3
                        easing.type: Easing.InOutQuad
                    }
                }// end ParallelAnimation
                ParallelAnimation{
                    NumberAnimation {
                        target: core
                        property: "scale"
                        duration: 8000
                        to : 1
                        easing.type: Easing.OutElastic
                    }
                    NumberAnimation {
                        target: core
                        property: "opacity"
                        duration: 9000
                        to : .7     //default
                        easing.type: Easing.OutElastic
                    }
                } // end ParallelAnimation
            } // end mouseOnCore

            //core scale Animation
            ParallelAnimation{
                id:aniCore
                loops : Animation.Infinite
                SequentialAnimation{
                    NumberAnimation {
                        target: core
                        property: "scale"
                        duration: 1500
                        easing.type: Easing.OutElastic
                        to : .5
                    }
                    NumberAnimation {
                        target: core
                        property: "scale"
                        duration: 5000
                        easing.type: Easing.OutBack
                        to : 1
                    }
                }// end SequentialAnimation
            }//end ParallelAnimation
        }// end core

        RectangularGlow{
            id : effectouter
            anchors.fill: core
            glowRadius: 20
            color: "white"
            cornerRadius: core.radius + glowRadius


            SequentialAnimation{
                id:anieffectouter
                loops: Animation.Infinite
                NumberAnimation {
                    running: true
                    target: effectouter
                    property: "spread"
                    duration: 15000
                    easing.type: Easing.InOutQuad
                    from  :.2
                    to : .8
                }
                NumberAnimation {
                    running: true
                    target: effectouter
                    property: "spread"
                    duration: 15000
                    easing.type: Easing.InOutQuad
                    from : .8
                    to : .2
                }
            } // end    anieffectouter
        }
                RectangularGlow{
                    id : effectinner
                    anchors.fill: core
                    glowRadius: 10
                    spread: .025
                    color: "lightblue"
                    cornerRadius: core.radius + glowRadius
                }

        FontLoader{
            id: fontDroid
            source: "font/IDroid.otf"

        }
        FontLoader{
            id : fontNeoTeric
            source: "font/NEOTERIC.ttf"
        }

        Text {
            id: txtNewsPeople
            font.family: "NEOTERIC"
            text: qsTr("News People")
            opacity: 0.7
            font.bold: true
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 50
            width: parent.width * (1 / 3)
            height: 50
            color: "#f8e7e7"
        } // end core
        Text{
            property int numMs : 999
            property int numSec : 59
            anchors.centerIn:  parent
            id:txtTime
            text:  numSec + "." + numMs
            font.family: "IDroid"
            color : "black"
            // font.family: "NEOTERIC"
            font.pixelSize: 24
            ParallelAnimation{
                running: true
                NumberAnimation {
                    loops:Animation.Infinite
                    running: true
                    target: txtTime
                    property: 'numMs'
                    duration: 1000
                    from:999
                    to : 0
                    easing.type: Easing.InOutQuad
                } // end NumberAnimation
            } // end ParallelAnimation
        }//end txtTime
        //Rectangle here



        Item{
        }
        //        Row {
        //            x: 222
        //            LayoutMirroring.enabled: true
        //                LayoutMirroring.childrenInherit: true
        //                spacing: 5
        //                anchors.centerIn: parent
        //                width: coreborder.width
        //                height: coreborder.height

        //                Repeater {
        //                    model: 5

        //                    Rectangle {
        //                        x : coreborder.x + (coreborder.width / 2 )
        //                        //y : coreborder.y + (coreborder.height / 2) - 1
        //                        rotation: index
        //                        color: "red"
        //                        //opacity: (5 - index) / 5
        //                        width:  35
        //                        height: 35

        //                        Text {
        //                            text: index + 1
        //                            anchors.centerIn: parent
        //                        }
        //                    } // end Rectangle
        //                } // end Repeater
        //            } // end row

    } // end background
}


