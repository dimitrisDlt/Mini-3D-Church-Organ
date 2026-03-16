import QtQuick
import QtQuick.Controls.Material
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick3D
import QtQuick3D.Helpers
import MainScene


ApplicationWindow {

    //focus: true
    height: 768
    title: "3D Organ"
    visible: true
    width: 1280

    Component.onCompleted: {
        AudioEngine.init();
    }

    FocusScope {
        anchors.fill: parent
        focus: true

        property bool reNotePressed: false;
        property bool miNotePressed: false;
        property bool faNotePressed: false;
        property bool solNotePressed: false;
        property bool laNotePressed: false;
        property bool siNotePressed: false;
        property bool doNotePressed: false;

        property bool deepIChordPressed: false;
        property bool deepIIChordPressed: false;
        property bool deepIIIChordPressed: false;
        property bool deepIVChordPressed: false;
        property bool deepVChordPressed: false;
        property bool deepVIChordPressed: false;
        property bool deepVIIChordPressed: false;

        property bool mainIChordPressed: false;
        property bool mainIIChordPressed: false;
        property bool mainIIIChordPressed: false;
        property bool mainIVChordPressed: false;
        property bool mainVChordPressed: false;
        property bool mainVIChordPressed: false;
        property bool mainVIIChordPressed: false;

        Keys.onPressed: event => {


            if (event.key === Qt.Key_1) {
                reButton.animateClick();
                if (!reNotePressed) {
                    AudioEngine.sendNoteOn(74);
                    reNotePressed = true;
                }

            }


            if (event.key === Qt.Key_2) {
                miButton.animateClick();
                if (!miNotePressed) {
                    AudioEngine.sendNoteOn(76);
                    miNotePressed = true;
                }
            }


            if (event.key === Qt.Key_3) {
                faButton.animateClick();
                if (!faNotePressed) {
                    AudioEngine.sendNoteOn(77);
                    faNotePressed = true;
                }
            }


            if (event.key === Qt.Key_4) {
                solButton.animateClick();
                if (!solNotePressed) {
                    AudioEngine.sendNoteOn(79);
                    solNotePressed = true;
                }
            }


            if (event.key === Qt.Key_5) {
                laButton.animateClick();
                if (!laNotePressed) {
                    AudioEngine.sendNoteOn(81);
                    laNotePressed = true;
                }
            }

            if (event.key === Qt.Key_6) {
                siButton.animateClick();
                if (!siNotePressed) {
                    AudioEngine.sendNoteOn(82);
                    siNotePressed = true;
                }
            }
            if (event.key === Qt.Key_7) {
                doButton.animateClick();
                if (!doNotePressed) {
                    AudioEngine.sendNoteOn(84);
                    doNotePressed = true;
                }
            }


            if (event.key === Qt.Key_Z) {
                deepIChord.animateClick();
                if (!deepIChordPressed) {
                    AudioEngine.sendNoteOn(38);
                    AudioEngine.sendNoteOn(45);
                    AudioEngine.sendNoteOn(50);
                    AudioEngine.sendNoteOn(53);
                    AudioEngine.sendNoteOn(57);
                    deepIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_X) {
                deepIIChord.animateClick();
                if (!deepIIChordPressed) {
                    AudioEngine.sendNoteOn(40);
                    AudioEngine.sendNoteOn(46);
                    AudioEngine.sendNoteOn(52);
                    AudioEngine.sendNoteOn(55);
                    AudioEngine.sendNoteOn(58);
                    deepIIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_C) {
                deepIIIChord.animateClick();
                if (!deepIIIChordPressed) {
                    AudioEngine.sendNoteOn(41);
                    AudioEngine.sendNoteOn(45);
                    AudioEngine.sendNoteOn(48);
                    AudioEngine.sendNoteOn(53);
                    deepIIIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_V) {
                deepIVChord.animateClick();
                if (!deepIVChordPressed) {
                    AudioEngine.sendNoteOn(38);
                    AudioEngine.sendNoteOn(43);
                    AudioEngine.sendNoteOn(46);
                    AudioEngine.sendNoteOn(50);
                    AudioEngine.sendNoteOn(55);
                    deepIVChordPressed = true;
                }
            }
            if (event.key === Qt.Key_B) {
                deepVChord.animateClick();
                if (!deepVChordPressed) {
                    AudioEngine.sendNoteOn(45);
                    AudioEngine.sendNoteOn(48);
                    AudioEngine.sendNoteOn(52);
                    AudioEngine.sendNoteOn(57);
                    //AudioEngine.sendNoteOn(55);
                    deepVChordPressed = true;
                }
            }
            if (event.key === Qt.Key_N) {
                deepVIChord.animateClick();
                if (!deepVIChordPressed) {
                    AudioEngine.sendNoteOn(41);
                    AudioEngine.sendNoteOn(46);
                    AudioEngine.sendNoteOn(50);
                    AudioEngine.sendNoteOn(53);
                    //AudioEngine.sendNoteOn(55);
                    deepVIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_M) {
                deepVIIChord.animateClick();
                if (!deepVIIChordPressed) {
                    AudioEngine.sendNoteOn(43);
                    AudioEngine.sendNoteOn(48);
                    AudioEngine.sendNoteOn(52);
                    AudioEngine.sendNoteOn(55);
                    //AudioEngine.sendNoteOn(55);
                    deepVIIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_R) {
                mainIChord.animateClick();
                if (!mainIChordPressed) {
                    AudioEngine.sendNoteOn(50);
                    AudioEngine.sendNoteOn(57);
                    AudioEngine.sendNoteOn(62);
                    AudioEngine.sendNoteOn(65);
                    AudioEngine.sendNoteOn(69);
                    mainIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_T) {
                mainIIChord.animateClick();
                if (!mainIIChordPressed) {
                    AudioEngine.sendNoteOn(58);
                    AudioEngine.sendNoteOn(64);
                    AudioEngine.sendNoteOn(67);
                    AudioEngine.sendNoteOn(70);
                    //AudioEngine.sendNoteOn(69);
                    mainIIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_Y) {
                mainIIIChord.animateClick();
                if (!mainIIIChordPressed) {
                    AudioEngine.sendNoteOn(53);
                    AudioEngine.sendNoteOn(65);
                    AudioEngine.sendNoteOn(69);
                    AudioEngine.sendNoteOn(72);
                    //AudioEngine.sendNoteOn(69);
                    mainIIIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_U) {
                mainIVChord.animateClick();
                if (!mainIVChordPressed) {
                    AudioEngine.sendNoteOn(55);
                    AudioEngine.sendNoteOn(62);
                    AudioEngine.sendNoteOn(67);
                    AudioEngine.sendNoteOn(70);
                    AudioEngine.sendNoteOn(74);
                    mainIVChordPressed = true;
                }
            }
            if (event.key === Qt.Key_I) {
                mainVChord.animateClick();
                if (!mainVChordPressed) {
                    AudioEngine.sendNoteOn(57);
                    AudioEngine.sendNoteOn(64);
                    AudioEngine.sendNoteOn(69);
                    AudioEngine.sendNoteOn(72);
                    AudioEngine.sendNoteOn(76);
                    mainVChordPressed = true;
                }
            }
            if (event.key === Qt.Key_O) {
                mainVIChord.animateClick();
                if (!mainVIChordPressed) {
                    AudioEngine.sendNoteOn(58);
                    AudioEngine.sendNoteOn(65);
                    AudioEngine.sendNoteOn(70);
                    AudioEngine.sendNoteOn(74);
                    AudioEngine.sendNoteOn(77);
                    mainVIChordPressed = true;
                }
            }
            if (event.key === Qt.Key_P) {
                mainVIIChord.animateClick();
                if (!mainVIIChordPressed) {
                    AudioEngine.sendNoteOn(60);
                    AudioEngine.sendNoteOn(67);
                    AudioEngine.sendNoteOn(72);
                    AudioEngine.sendNoteOn(76);
                    // AudioEngine.sendNoteOn(77);
                    mainVIIChordPressed = true;
                }
            }

            event.accepted = true;
        }

        Keys.onReleased: event => {
            if (event.key === Qt.Key_1) {
                if (reNotePressed && !event.isAutoRepeat) {
                    AudioEngine.sendNoteOff(74);
                    reNotePressed = false;
                }

            }
            if (event.key === Qt.Key_2 && !event.isAutoRepeat) {
                if (miNotePressed) {
                    AudioEngine.sendNoteOff(76);
                    miNotePressed = false;
                }
            }
            if (event.key === Qt.Key_3 && !event.isAutoRepeat) {
                if (faNotePressed) {
                    AudioEngine.sendNoteOff(77);
                    faNotePressed = false;
                }
            }
            if (event.key === Qt.Key_4 && !event.isAutoRepeat) {
                if (solNotePressed) {
                    AudioEngine.sendNoteOff(79);
                    solNotePressed = false;
                }
            }
            if (event.key === Qt.Key_5 && !event.isAutoRepeat) {
                if (laNotePressed) {
                    AudioEngine.sendNoteOff(81);
                    laNotePressed = false;
                }
            }
            if (event.key === Qt.Key_6 && !event.isAutoRepeat) {
                if (siNotePressed) {
                    AudioEngine.sendNoteOff(82);
                    siNotePressed = false;
                }
            }
            if (event.key === Qt.Key_7 && !event.isAutoRepeat) {
                if (doNotePressed) {
                    AudioEngine.sendNoteOff(84);
                    doNotePressed = false;
                }
            }
            if (event.key === Qt.Key_Z && !event.isAutoRepeat) {
                deepIChord.animateClick();
                if (deepIChordPressed) {
                    AudioEngine.sendNoteOff(38);
                    AudioEngine.sendNoteOff(45);
                    AudioEngine.sendNoteOff(50);
                    AudioEngine.sendNoteOff(53);
                    AudioEngine.sendNoteOff(57);
                    deepIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_X && !event.isAutoRepeat) {
                deepIIChord.animateClick();
                if (deepIIChordPressed) {
                    AudioEngine.sendNoteOff(40);
                    AudioEngine.sendNoteOff(46);
                    AudioEngine.sendNoteOff(52);
                    AudioEngine.sendNoteOff(55);
                    AudioEngine.sendNoteOff(58);
                    deepIIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_C && !event.isAutoRepeat) {
                deepIIIChord.animateClick();
                if (deepIIIChordPressed) {
                    AudioEngine.sendNoteOff(41);
                    AudioEngine.sendNoteOff(45);
                    AudioEngine.sendNoteOff(48);
                    AudioEngine.sendNoteOff(53);
                    deepIIIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_V && !event.isAutoRepeat) {
                deepIVChord.animateClick();
                if (deepIVChordPressed) {
                    AudioEngine.sendNoteOff(38);
                    AudioEngine.sendNoteOff(43);
                    AudioEngine.sendNoteOff(46);
                    AudioEngine.sendNoteOff(50);
                    AudioEngine.sendNoteOff(55);
                    deepIVChordPressed = false;
                }
            }
            if (event.key === Qt.Key_B && !event.isAutoRepeat) {
                deepVChord.animateClick();
                if (deepVChordPressed) {
                    AudioEngine.sendNoteOff(45);
                    AudioEngine.sendNoteOff(48);
                    AudioEngine.sendNoteOff(52);
                    AudioEngine.sendNoteOff(57);
                    //AudioEngine.sendNoteOff(55);
                    deepVChordPressed = false;
                }
            }
            if (event.key === Qt.Key_N && !event.isAutoRepeat) {
                deepVIChord.animateClick();
                if (deepVIChordPressed) {
                    AudioEngine.sendNoteOff(41);
                    AudioEngine.sendNoteOff(46);
                    AudioEngine.sendNoteOff(50);
                    AudioEngine.sendNoteOff(53);
                    //AudioEngine.sendNoteOff(55);
                    deepVIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_M && !event.isAutoRepeat) {
                deepVIIChord.animateClick();
                if (deepVIIChordPressed) {
                    AudioEngine.sendNoteOff(43);
                    AudioEngine.sendNoteOff(48);
                    AudioEngine.sendNoteOff(52);
                    AudioEngine.sendNoteOff(55);
                    //AudioEngine.sendNoteOff(55);
                    deepVIIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_R && !event.isAutoRepeat) {
                mainIChord.animateClick();
                if (mainIChordPressed) {
                    AudioEngine.sendNoteOff(50);
                    AudioEngine.sendNoteOff(57);
                    AudioEngine.sendNoteOff(62);
                    AudioEngine.sendNoteOff(65);
                    AudioEngine.sendNoteOff(69);
                    mainIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_T && !event.isAutoRepeat) {
                mainIIChord.animateClick();
                if (mainIIChordPressed) {
                    AudioEngine.sendNoteOff(58);
                    AudioEngine.sendNoteOff(64);
                    AudioEngine.sendNoteOff(67);
                    AudioEngine.sendNoteOff(70);
                    //AudioEngine.sendNoteOff(69);
                    mainIIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_Y && !event.isAutoRepeat) {
                mainIIIChord.animateClick();
                if (mainIIIChordPressed) {
                    AudioEngine.sendNoteOff(53);
                    AudioEngine.sendNoteOff(65);
                    AudioEngine.sendNoteOff(69);
                    AudioEngine.sendNoteOff(72);
                    //AudioEngine.sendNoteOff(69);
                    mainIIIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_U && !event.isAutoRepeat) {
                mainIVChord.animateClick();
                if (mainIVChordPressed) {
                    AudioEngine.sendNoteOff(55);
                    AudioEngine.sendNoteOff(62);
                    AudioEngine.sendNoteOff(67);
                    AudioEngine.sendNoteOff(70);
                    AudioEngine.sendNoteOff(74);
                    mainIVChordPressed = false;
                }
            }
            if (event.key === Qt.Key_I && !event.isAutoRepeat) {
                mainVChord.animateClick();
                if (mainVChordPressed) {
                    AudioEngine.sendNoteOff(57);
                    AudioEngine.sendNoteOff(64);
                    AudioEngine.sendNoteOff(69);
                    AudioEngine.sendNoteOff(72);
                    AudioEngine.sendNoteOff(76);
                    mainVChordPressed = false;
                }
            }
            if (event.key === Qt.Key_O && !event.isAutoRepeat) {
                mainVIChord.animateClick();
                if (mainVIChordPressed) {
                    AudioEngine.sendNoteOff(58);
                    AudioEngine.sendNoteOff(65);
                    AudioEngine.sendNoteOff(70);
                    AudioEngine.sendNoteOff(74);
                    AudioEngine.sendNoteOff(77);
                    mainVIChordPressed = false;
                }
            }
            if (event.key === Qt.Key_P && !event.isAutoRepeat) {
                mainVIIChord.animateClick();
                if (mainVIIChordPressed) {
                    AudioEngine.sendNoteOff(60);
                    AudioEngine.sendNoteOff(67);
                    AudioEngine.sendNoteOff(72);
                    AudioEngine.sendNoteOff(76);
                    // AudioEngine.sendNoteOff(77);
                    mainVIIChordPressed = false;
                }
            }

            event.accepted = true;
        }

        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            Rectangle {
                Layout.fillWidth: true
                Layout.maximumHeight: 70
                Layout.minimumHeight: 70
                color: "#5F374B"

                Text {
                    anchors.centerIn: parent
                    color: "white"
                    font.bold: true
                    font.pointSize: 24
                    text: "3D Church Organ"
                }
            }
            Rectangle {
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "#EEE4B1"

                RowLayout {
                    anchors.fill: parent

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.maximumWidth: 200
                        Layout.minimumWidth: 200
                        color: "transparent"

                        ColumnLayout {
                            anchors.fill: parent

                            ChordButton {
                                id: deepVIIChord

                                text: "Chord VII (M)"
                            }
                            ChordButton {
                                id: deepVIChord


                                text: "Chord VI (N)"
                            }
                            ChordButton {
                                id: deepVChord

                                text: "Chord V (B)"
                            }
                            ChordButton {
                                id: deepIVChord

                                text: "Chord VI (V)"
                            }
                            ChordButton {
                                id: deepIIIChord

                                text: "Chord III (C)"
                            }
                            ChordButton {
                                id: deepIIChord

                                text: "Chord II (X)"
                            }
                            ChordButton {
                                id: deepIChord

                                text: "Chord I (Z)"
                            }
                        }
                    }
                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        View3D {
                            anchors.fill: parent

                            environment: ExtendedSceneEnvironment {
                                backgroundMode: SceneEnvironment.SkyBox

                                lightProbe: Texture {
                                    source: "qrc:/big_chapel_4K.exr" //FOR RELEASE
                                    //source: "../assets/016_hdrmaps_com_free_2K.exr" // WITH QML UTILITY
                                }
                            }

                            DirectionalLight {
                            }
                            PerspectiveCamera {
                                id: camera

                            }
                            WasdController {
                                controlledObject: camera
                            }
                        }
                    }
                    Rectangle {
                        Layout.fillHeight: true
                        Layout.maximumWidth: 200
                        Layout.minimumWidth: 200
                        color: "transparent"

                        ColumnLayout {
                            anchors.fill: parent

                            ChordButton {
                                id: mainVIIChord

                                text: "Chord VII (P)"
                            }
                            ChordButton {
                                id: mainVIChord

                                text: "Chord VI (O)"
                            }
                            ChordButton {
                                id: mainVChord

                                text: "Chord V (I)"
                            }
                            ChordButton {
                                id: mainIVChord

                                text: "Chord IV (U)"
                            }
                            ChordButton {
                                id: mainIIIChord

                                text: "Chord III (Y)"
                            }
                            ChordButton {
                                id: mainIIChord

                                text: "Chord II (T)"
                            }
                            ChordButton {
                                id: mainIChord

                                text: "Chord I (R)"
                            }
                        }
                    }
                }
            }
            Rectangle {
                Layout.fillWidth: true
                Layout.maximumHeight: 120
                Layout.minimumHeight: 120
                color: "#5F374B"

                RowLayout {
                    id: btnContainer

                    property int btnSize: 100

                    anchors.fill: parent
                    spacing: 10
                    uniformCellSizes: true

                    Rectangle {
                        Layout.fillWidth: true
                    }

                    LimButton {
                        id: reButton

                        Layout.maximumHeight: btnContainer.btnSize
                        Layout.maximumWidth: btnContainer.btnSize
                        Layout.minimumHeight: btnContainer.btnSize
                        Layout.minimumWidth: btnContainer.btnSize
                        text: "Re \n (1)"
                    }
                    LimButton {
                        id: miButton

                        Layout.maximumHeight: btnContainer.btnSize
                        Layout.maximumWidth: btnContainer.btnSize
                        Layout.minimumHeight: btnContainer.btnSize
                        Layout.minimumWidth: btnContainer.btnSize
                        text: "Mi \n (2)"
                    }
                    LimButton {
                        id: faButton

                        Layout.maximumHeight: btnContainer.btnSize
                        Layout.maximumWidth: btnContainer.btnSize
                        Layout.minimumHeight: btnContainer.btnSize
                        Layout.minimumWidth: btnContainer.btnSize
                        text: "Fa \n (3)"
                    }
                    LimButton {
                        id: solButton

                        Layout.maximumHeight: btnContainer.btnSize
                        Layout.maximumWidth: btnContainer.btnSize
                        Layout.minimumHeight: btnContainer.btnSize
                        Layout.minimumWidth: btnContainer.btnSize
                        text: "Sol \n (4)"
                    }
                    LimButton {
                        id: laButton

                        Layout.maximumHeight: btnContainer.btnSize
                        Layout.maximumWidth: btnContainer.btnSize
                        Layout.minimumHeight: btnContainer.btnSize
                        Layout.minimumWidth: btnContainer.btnSize
                        text: "La \n (5)"
                    }
                    LimButton {
                        id: siButton

                        Layout.maximumHeight: btnContainer.btnSize
                        Layout.maximumWidth: btnContainer.btnSize
                        Layout.minimumHeight: btnContainer.btnSize
                        Layout.minimumWidth: btnContainer.btnSize
                        text: "Si♭ \n (6)"
                    }
                    LimButton {
                        id: doButton

                        Layout.maximumHeight: btnContainer.btnSize
                        Layout.maximumWidth: btnContainer.btnSize
                        Layout.minimumHeight: btnContainer.btnSize
                        Layout.minimumWidth: btnContainer.btnSize
                        text: "Do \n (7)"
                    }

                    Rectangle {
                        Layout.fillWidth: true
                    }
                }
            }
        }
    }
}

