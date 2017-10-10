#include <iostream>
#include "ConcreteObserver.h"
#include "ConcreteSubject.h"


using namespace std;
int main()
{
	Subject * subject = new ConcreteSubject();

	Observer * objA = new ConcreteObserver("A");
	Observer * objB = new ConcreteObserver("B");
	subject->attach(objA);
	subject->attach(objB);

	subject->setState(1);
	subject->notify();

	cout << "-----------------" << endl;
	subject->detach(objB);
	subject->setState(2);
	subject->notify();

	delete subject;
	delete objA;
	delete objB;

    return 0;
}
