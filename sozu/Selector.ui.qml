import QtQuick 2.12
import QtQuick.Layouts 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Item {
    id: selector
    width: 200
    height: 150
    focus: true
    activeFocusOnTab: true

    property string blurb: description.text

    Rectangle {
        id: selectRect

        Text {
            id: description
            text: selector.blurb
            font.pixelSize: 12
        }
    }
}
