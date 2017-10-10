//
// Created by litian on 10/10/17.
//

#ifndef INC_01_SUBJECT_H
#define INC_01_SUBJECT_H

#include "Observer.h"
#include <vector>

using namespace std;

class Subject
{
public:
	virtual ~Subject() {}

	void attach(Observer * observer);
	void detach(Observer * observer);

	void notify();

	virtual int getState() = 0;
	virtual void setState(int i) = 0;

private:
	vector<Observer *> m_objs;
};


#endif //INC_01_SUBJECT_H
