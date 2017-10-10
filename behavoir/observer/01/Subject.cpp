//
// Created by litian on 10/10/17.
//

#include "Subject.h"
#include "Observer.h"

void Subject::attach(Observer * observer) {
	m_objs.push_back(observer);
}


void Subject::detach(Observer * observer) {
	for (auto iter = m_objs.begin(); iter != m_objs.end(); ++iter) {
		if (*iter == observer) {
			m_objs.erase(iter);
			break;
		}
	}

	return;
}

void Subject::notify() {
	for(auto iter = m_objs.begin(); iter != m_objs.end(); ++iter) {
		(*iter)->update(this);
	}
}
