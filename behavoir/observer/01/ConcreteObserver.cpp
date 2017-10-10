//
// Created by litian on 10/10/17.
//

#include "ConcreteObserver.h"
#include <iostream>

using namespace std;


void ConcreteObserver::update(Subject * subject) {
	m_observerState = subject->getState();
	cout << "update observer [" << m_name << "]\n";
}
