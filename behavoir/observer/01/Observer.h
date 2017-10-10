//
// Created by litian on 10/10/17.
//

#ifndef INC_01_OBSERVER_H
#define INC_01_OBSERVER_H

class Subject;

class Observer {
public:
	virtual ~Observer() {}

	virtual void update(Subject * subject) = 0;
};


#endif //INC_01_OBSERVER_H
