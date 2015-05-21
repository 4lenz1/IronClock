import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    Rectangle{
        property alias txtTime: txtTime
        id:background

        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#011f04"
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
            text: numSec + "." + numMs
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


