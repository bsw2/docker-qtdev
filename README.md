# bsw2/qtdev

Docker image for compling QT gui apps

# How to use this image

## First create a simple.cpp file

```c++
#include <QApplication>
#include <QWidget>

int main(int argc, char *argv[]) {

    QApplication app(argc, argv);

    QWidget window;

    window.resize(250, 150);
    window.setWindowTitle("Simple example");
    window.show();

    return app.exec();
}
```

## A simple.pro file will also be needed

```
TEMPLATE = app
TARGET = simple
INCLUDEPATH += .

# Input
SOURCES += simple.cpp

QT += widgets
```

## Then run the container
```console
$ docker run --rm -it -v $(pwd):/src bsw2/qtdev
```
