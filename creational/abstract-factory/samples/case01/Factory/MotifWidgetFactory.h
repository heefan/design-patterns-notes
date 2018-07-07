//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_MOTIFWIDGETFACTORY_H
#define CASE01_MOTIFWIDGETFACTORY_H

#include "MotifScrollBar.h"
#include "MotifWindow.h"
#include "WidgetFactory.h"
#include <iostream>

class MotifWidgetFactory :public WidgetFactory {
public:
    MotifWidgetFactory() {
        std::cout << "MotfiWidgetFactory construct" << std::endl;
    }

    ScrollBar * createScrollBar() {
        return new MotifScrollBar();
    }
    Window * createWindow() {
        return new MotifWindow();
    }
};


#endif //CASE01_MOTIFWIDGETFACTORY_H
