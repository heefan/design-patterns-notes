//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_WIDGETFACTORY_H
#define CASE01_WIDGETFACTORY_H

#include "Window.h"
#include "ScrollBar.h"

class WidgetFactory {
public:
    WidgetFactory() {
        std::cout << "WidgetFactory construct" << std::endl;
    }

    virtual ScrollBar * createScrollBar() = 0;
    virtual Window * createWindow() = 0;
};


#endif //CASE01_WIDGETFACTORY_H
