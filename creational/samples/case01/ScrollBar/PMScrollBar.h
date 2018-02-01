//
// Created by heefan on 1/2/18.
//

#ifndef CASE01_PMSCROLLBAR_H
#define CASE01_PMSCROLLBAR_H

#include "ScrollBar.h"
#include <iostream>

class PMScrollBar : public ScrollBar {
public:
    PMScrollBar() {
        std::cout << "PMScrollBar constructor" << std::endl;
    }

    virtual ~PMScrollBar() {

    }
};


#endif //CASE01_PMSCROLLBAR_H
