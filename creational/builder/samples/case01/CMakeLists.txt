cmake_minimum_required(VERSION 3.9)
project(case01)

set(CMAKE_CXX_STANDARD 11)

include_directories(
        .
        builder
        builder/Converter)

add_executable(case01
        main.cpp
        builder/ASCIIText.h
        builder/TeXText.h
        builder/TextWidget.h
        builder/Converter/ASCIIConverter.h
        builder/Converter/TeXConverter.h
        builder/Converter/TextConverter.h
        Helper.h
        RTFReader.h
        Document.h)