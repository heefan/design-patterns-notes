cmake_minimum_required(VERSION 3.9)
project(case02)

set(CMAKE_CXX_STANDARD 11)

add_executable(case02 main.cpp Builder.h Product.h MealDirector.h ConcreteBuilder.h)