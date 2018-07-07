//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_MOTIFWINDOW_H
#define CASE01_MOTIFWINDOW_H

#include "Window.h"
#include <iostream>

class MotifWindow : public Window {
public:
    MotifWindow() {
        std::cout << "MotifWindow constructor" << std::endl;
    }

    virtual ~MotifWindow() {

    }
};


#endif //CASE01_MOTIFWINDOW_H
