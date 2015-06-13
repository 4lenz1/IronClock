import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0


Item{
    SequentialAnimation{

        NumberAnimation {
            target: txtTime
            property: "opacity"
            duration: 2000
            easing.type: Easing.OutCubic
        }
    }
}
