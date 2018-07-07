#include <iostream>
#include "RTFReader.h"
#include "Document.h"
#include "ASCIIConverter.h"

int main() {

    Document  * doc = new Document();
    ASCIIConverter * asciiBuilder = new ASCIIConverter();
    RTFReader * reader = new RTFReader(asciiBuilder);
    reader->parseRTF(doc);
    ASCIIText * asciiText = asciiBuilder->getASCIIText();

    return 0;
}