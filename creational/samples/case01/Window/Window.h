//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_WINDOW_H
#define CASE01_WINDOW_H

#include <iostream>

class Window {
public:
    Window() {
        std::cout << "Window base" << std::endl;
    }

    virtual ~Window() {

    }
};


#endif //CASE01_WINDOW_H
