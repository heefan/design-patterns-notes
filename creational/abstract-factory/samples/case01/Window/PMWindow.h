//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_PMWINDOW_H
#define CASE01_PMWINDOW_H

#include "Window.h"

class PMWindow : public Window {
public:
    PMWindow() {
        std::cout << "PMWindow constructor" << std::endl;
    }

    virtual ~PMWindow() {

    }
};


#endif //CASE01_PMWINDOW_H
