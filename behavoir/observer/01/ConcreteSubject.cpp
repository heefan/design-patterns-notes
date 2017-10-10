#include "ConcreteSubject.h"

int ConcreteSubject::getState() {
	return m_state;
}

void ConcreteSubject::setState(int i) {
	m_state = i;
}
