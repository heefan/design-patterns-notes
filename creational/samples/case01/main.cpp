#include "PMWidgetFactory.h"
#include "MotifWidgetFactory.h"


int main() {

    // I want to create "PM theme"
    WidgetFactory * motifWidget = new MotifWidgetFactory();
    ScrollBar * scrollBar = motifWidget->createScrollBar();
    Window * window = motifWidget->createWindow();

    return 0;
}