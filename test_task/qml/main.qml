import QtQuick 2.15
import QtQuick.Window 2.15

import widgets 1.0


Window {
    id: main__window

    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    visible: true
    title: qsTr("This is my test progtamm")

    SettingsPopup {
        id: settings__popup
    }
}
