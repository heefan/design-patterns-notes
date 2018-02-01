cmake_minimum_required(VERSION 3.9)
project(case01)

set(CMAKE_CXX_STANDARD 11)

include_directories(ScrollBar Window Factory)
add_executable(case01
        main.cpp
        Factory/WidgetFactory.h
        Window/Window.h
        Window/PMWindow.h
        Window/MotifWindow.h
        ScrollBar/ScrollBar.h
        ScrollBar/PMScrollBar.h
        ScrollBar/MotifScrollBar.h
        Factory/MotifWidgetFactory.h Factory/PMWidgetFactory.h)