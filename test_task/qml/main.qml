import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15
import QtQuick.Dialogs 1.1

import widgets 1.0


ApplicationWindow {
    id: main__window

    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    visible: true
    title: qsTr("This is my test progtamm")


    FileDialog {
        id: file_dialog
        property url previousFolder: ""
        title: "Please choose a folder"
        folder: shortcuts.home
        selectFolder: true
        onAccepted: {
            file_module_.setDirPath(file_dialog.fileUrl)
        }
        //Если пользователь отменил открытие файла (нажал на "отмена")
        onRejected: {
            console.log("Файл не выбран")
        }
    }

    MouseArea {
        id: mouse_area
        anchors.fill: parent
        hoverEnabled: true
        onPositionChanged: {
            mouse_handler__widget.x_coordinate = mouseX
            mouse_handler__widget.y_coordinate = mouseY
        }
    }

    MouseHandlerWidget {
        id: mouse_handler__widget
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
            radius: 5
            color: "gray"
            opacity: 0.8
        }

        onClicked: {
            console.log("Применить настройки")
            settings__popup.open()
        }
    }

    Button {
        id: save__button
        anchors.top: parent.top
        anchors.left: setting__button.right
        anchors.margins: 10

        text: "Сохранить"

        background: Rectangle {
            radius: 5
            color: "gray"
            opacity: 0.8
        }

        onClicked: {
            file_module_.seveResult()
            console.log("Сохранить")
        }
    }

    Shortcut {
        sequences: ["Ctrl+Q"]
        onActivated: Qt.quit()
    }
}
