import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

import widgets 1.0


Window {
    id: main__window

    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    visible: true
    title: qsTr("This is my test progtamm")

    MouseArea {
        id: mouse_area
        anchors.fill: parent
        hoverEnabled: true
        onPositionChanged: {
            mouse_handler.x_coordinate = mouseX
            mouse_handler.y_coordinate = mouseY
            console.log(mouseX, mouseY)
        }
    }

    MouseHandlerWidget {
        id: mouse_handler
    }

    SettingsPopup {
        id: settings__popup
    }

    Button {
        id: setting__button
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 10

        text: "Настройки"

        background: Rectangle {
            id: setting_botton_background
            radius: 5
            color: "gray"
            opacity: 0.8
        }

        onClicked: {
            console.log("Применить настройки")
            settings__popup.open()
        }
    }

}
