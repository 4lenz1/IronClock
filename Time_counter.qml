import QtQuick 2.4
import QtQuick.Controls 1.3

Rectangle {


    Item{
        property alias numSec : numSec;
        property alias timerSec: timerSec
        property int  hour: 24
        property int  min: 60
        property int  ms: 999
        Timer{
                id: timerSec
               property int  numSec: 59
                interval: 1000
                running: true
                onTriggered:{
                    numSec  --;
                }
            }


    }
}
