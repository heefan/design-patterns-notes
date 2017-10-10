cmake_minimum_required(VERSION 3.8)
project(01)

include_directories("../../../plog/include/")
set(CMAKE_CXX_STANDARD 11)
set(SOURCE_FILES
    main.cpp 
    Subject.cpp 
    Subject.h
    Observer.cpp 
    Observer.h 
    ConcreteSubject.cpp 
    ConcreteSubject.h
    ConcreteObserver.cpp 
    ConcreteObserver.h)

add_executable(01 ${SOURCE_FILES})
