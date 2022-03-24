import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.15

Item {
    id: root

    property int x_coordinate: 0
    property int y_coordinate: 0

    anchors.top: parent.top
    anchors.right : parent.right
    anchors.margins: 10
    width: parent.width / 5
    height: parent.height / 9

    Rectangle {
      anchors.fill: parent
      radius: 10
      color: "gray"
      opacity: 0.8

      GridLayout {
          anchors.fill: parent
          anchors.margins: 5
          columns: 2
          rows: 3
          Item {
              Layout.fillWidth: true
              Layout.fillHeight: true
              Layout.columnSpan: parent.columns
              Layout.alignment: Qt.AlignTop
              Text {
                  anchors.fill: parent
                  horizontalAlignment: Text.AlignHCenter
                  verticalAlignment: Text.AlignVCenter
                  text: "Координаты положения мыши"
              }
          }
          Text {
              horizontalAlignment: Text.AlighRight
              verticalAlignment: Text.AlignVCenter
              text: "Координата X = "
          }
          Text {
              Layout.fillWidth: true
              horizontalAlignment: Text.AlighLeft
              verticalAlignment: Text.AlignVCenter
              text: x_coordinate.toString()
          }
          Text {
              horizontalAlignment: Text.AlighRight
              verticalAlignment: Text.AlignVCenter
              text: "Координата Y = "
          }
          Text {
              Layout.fillWidth: true
              horizontalAlignment: Text.AlighLeft
              verticalAlignment: Text.AlignVCenter
              text: y_coordinate.toString()
          }
      }

    }
}
