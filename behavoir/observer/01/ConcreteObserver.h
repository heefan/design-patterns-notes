//
// Created by litian on 10/10/17.
//

#ifndef INC_01_CONCRETEOBSERVER_H
#define INC_01_CONCRETEOBSERVER_H

#include "Observer.h"
#include "Subject.h"
#include <string>

using namespace std;


class ConcreteObserver : public Observer {
public:
	ConcreteObserver(string name) :
		m_observerState(0),
		m_name(name)
	{

	}

	virtual ~ConcreteObserver() {  }
	virtual void update(Subject * subject);

private:
	int m_observerState;
	string m_name;
};

#endif
