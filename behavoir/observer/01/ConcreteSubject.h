#ifndef _concrete_subject_h
#define _concrete_subject_h

#include <string>
#include "Observer.h"
#include "Subject.h"

class ConcreteSubject : public Subject
{
public:
	virtual ~ConcreteSubject() {}

	virtual int getState();
	virtual void setState(int i);

private:
	int m_state;
};
#endif
