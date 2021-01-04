import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Universal 2.12
import "qml/dev/sozu/selector" as Selector

Item {

    id: mainItem
    focus: true
    activeFocusOnTab: true

    GridLayout {

        id: mainGrid
        anchors.fill: parent

        Selector.Create {
            id: templateCreateSelector
            Layout.preferredWidth: 200
            Layout.preferredHeight: 150
            Layout.margins: 20
            Layout.column: 0
            Layout.row: 0
            blurb: qsTr("Create a new template")
        }

        Selector.Open {
            id: templateOpenSelector
            Layout.preferredWidth: 200
            Layout.preferredHeight: 150
            Layout.margins: 20
            Layout.column: 1
            Layout.row: 0
            blurb: qsTr("Open an existing template")
        }

        Selector.Create {
            id: modelCreateSelector
            Layout.preferredWidth: 200
            Layout.preferredHeight: 150
            Layout.margins: 20
            Layout.column: 0
            Layout.row: 1
            blurb: qsTr("Create a new model from a template")
        }

        Selector.Open {
            id: modelOpenSelector
            Layout.preferredWidth: 200
            Layout.preferredHeight: 150
            Layout.margins: 20
            Layout.column: 1
            Layout.row: 1
            blurb: qsTr("Open an existing model")
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.33;height:480;width:640}
}
##^##*/

