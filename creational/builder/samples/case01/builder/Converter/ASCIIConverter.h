//
// Created by heefan on 2/2/18.
//

#ifndef CASE01_ASCIICONVERTER_H
#define CASE01_ASCIICONVERTER_H

#include <iostream>
#include "TextConverter.h"
#include "ASCIIConverter.h"
#include "Helper.h"
#include "ASCIIText.h"


class ASCIIConverter : public TextConverter {
public:
    ASCIIConverter() {
        LOG("enter");
    }

    virtual ~ASCIIConverter() {
        LOG("enter");
    }

    //override
    virtual void convertCharacter(char * ch) {
        LOG("enter");
    }

    virtual void convertParagraph() {
        LOG("enter");
    }

    ASCIIText * getASCIIText() const {
        LOG("enter");
        return m_asciiConverter;
    }

private:
    ASCIIText * m_asciiConverter;
};


#endif //CASE01_ASCIICONVERTER_H
