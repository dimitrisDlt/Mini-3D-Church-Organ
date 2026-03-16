import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Button {
    Layout.alignment: Qt.AlignCenter
    Layout.minimumWidth: 160
    Layout.maximumWidth: 160

    contentItem: Text {
        //color: "#430A5D"
        anchors.centerIn: parent
        font.bold: true
        font.pointSize: 16
        horizontalAlignment: Text.AlignHCenter
        text: parent.text
        verticalAlignment: Text.AlignVCenter
    }
}

