//
// Created by heefan on 2/2/18.
//

#ifndef CASE01_RTFCONVERTER_H
#define CASE01_RTFCONVERTER_H


#include "TextConverter.h"
#include "Document.h"
#include "Helper.h"

class RTFReader {
public:
    RTFReader(TextConverter * textConverter)
            : m_textBuilder(textConverter)
    {
        LOG("constructor");
    }

    void parseRTF(Document * doc) {
        LOG("enter");
        m_textBuilder->convertCharacter('A');
        m_textBuilder->convertParagraph();
    }

private:
    TextConverter * m_textBuilder;
};


#endif //CASE01_RTFCONVERTER_H
