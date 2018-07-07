//
// Created by heefan on 2/2/18.
//

#ifndef CASE01_HELPER_H
#define CASE01_HELPER_H

#include <iostream>

#define __FILENAME__ (strrchr(__FILE__, '/') ? strrchr(__FILE__, '/') + 1 : __FILE__)
#define  LOG(MSG) std::cout << __FILENAME__ << ":" << __FUNCTION__ << ":" << MSG << std::endl;

#endif //CASE01_HELPER_H
