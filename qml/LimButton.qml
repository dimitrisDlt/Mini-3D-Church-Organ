import QtQuick
import QtQuick.Controls

Button {
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

