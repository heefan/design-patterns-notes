//
// Created by heefan on 6/2/18.
//

#ifndef CASE02_BUILDER_H
#define CASE02_BUILDER_H

#include "Product.h"

class Builder {
public:
    virtual void buildPartA() = 0;
    virtual void buildPart2() = 0;

    virtual Product * getProduct() = 0;
};


#endif //CASE02_BUILDER_H
