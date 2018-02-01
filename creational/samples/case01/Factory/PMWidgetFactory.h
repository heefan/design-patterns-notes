//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_PMWIDGETFACTORY_H
#define CASE01_PMWIDGETFACTORY_H

#include <iostream>
#include "WidgetFactory.h"
#include "PMScrollBar.h"
#include "PMWindow.h"

class PMWidgetFactory : public WidgetFactory {
public:
    PMWidgetFactory() {
        std::cout << "PMWidgetFactory construct" << std::endl;
    }

    ScrollBar * createScrollBar () {
        return new PMScrollBar();
    }

    Window * createWindow() {
        return new PMWindow();
    }

};


#endif //CASE01_PMWIDGETFACTORY_H
