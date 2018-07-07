//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_MOTIFSCROLLBAR_H
#define CASE01_MOTIFSCROLLBAR_H

#include <iostream>
#include "ScrollBar.h"

class MotifScrollBar : public ScrollBar {
public:
    MotifScrollBar() {
        std::cout << "MotifScrollBar constructor" << std::endl;
    }

    virtual ~MotifScrollBar() {}
};


#endif //CASE01_MOTIFSCROLLBAR_H
