#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

int main(int argc, char *argv[]) {

    // QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGL);
    qputenv("QSG_RENDER_LOOP", "threaded");
    qputenv("QSG_NO_VSYNC", "1");


    QGuiApplication application{argc, argv};
    QQmlApplicationEngine engine;

    engine.load("MainScene/qml/Main.qml");

    return application.exec();
}
