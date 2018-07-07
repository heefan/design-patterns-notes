//
// Created by heefan on 2/2/18.
//

#ifndef CASE01_TEXTCONVERTER_H
#define CASE01_TEXTCONVERTER_H

#include <iostream>
#include "Helper.h"

typedef struct Font {

}Font;


class TextConverter {
public:
    TextConverter() {
        LOG("enter");
    }

    virtual void convertCharacter(char ) {
        LOG("enter");
    }

    virtual void convertFontChange(Font) {
        LOG("enter");
    }

    virtual void convertParagraph() {
        LOG("enter");
    }
};


#endif //CASE01_TEXTCONVERTER_H
