import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

// Появляющееся окно настройки программы
Popup {
    id: root

    width: parent.width / 3
    height: parent.height / 5
    anchors.centerIn: parent
    closePolicy: Popup.CloseOnPressOutside
    modal: true
    visible: true

    background: Rectangle {
        anchors.fill: parent
        color: "lightgray"

        ColumnLayout {
            anchors.fill: parent
            spacing: 10

            Button {
                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                Layout.preferredWidth: parent.width / 4
                Layout.preferredHeight: parent.height / 7
                Layout.margins: 5
                text: "Закрыть"

                onClicked: {
                    console.log("Закрыть настройки")
                    root.close()
                }
            }
            RowLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.margins: 5
                spacing: 10

                Item {
                    Layout.fillHeight: true
                    Layout.preferredWidth: parent.width * 0.8

                    Text {
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        text: "Введите интервал времени, сек "
                    }
                }
                TextField {
                    id: second_amount__text_field
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height / 2
                    selectionColor: "grey"
                    validator: RegExpValidator {
                        regExp: /\d{1,3}/
                    }
                }

            }
            Button {
                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                Layout.preferredWidth: parent.width / 4
                Layout.preferredHeight: parent.height / 7
                Layout.margins: 5
                text: "Применить"

                onClicked: {
                    console.log("Применить настройки")
                }
            }
        }
    }
} //~Popup
