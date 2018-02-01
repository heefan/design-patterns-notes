#  Behavior 模式族 学习指导

## 1. 主要矛盾

Behavior 模式中有几个模式很重要，

1. Observer模式
2. Iterator模式
3. Strategy模式
4. Command 模式

其次是，

1. Chain of Responsibility 模式
2. State 模式
3. Template 模式

最后，适当了解

1. Interpreter模式
2. Visitor模式


## 2. 最重要的模式

### 2.1 最重要： Observer模式

**绝对要求**：

*实例*：天气预报系统，iOS里边的data source和delegate（tableview，就是View和Model），电子商务网站可以在执行发送操作后给用户多个发送商品打折信息，某团队战斗游戏中某队友牺牲将给所有成员提示等等，凡是涉及到`一对一`或者`一对多`的对象交互场景都可以使用观察者模式。

*UML*
![](./observer/images/1.jpg)

![](./observer/images/2.jpg)



### 2.2 最重要： Strategy 模式

**绝对要求**：

*实例*：比如出去某个城市旅游，可以坐大巴，坐动车，坐飞机，有多种交通方式都可以到达，具体采用什么样的方式，需要根据具体的计划安排、环境变化、主观客观因素等等来做决策。

（但是我觉得这个例子还是有点难懂！）

**UML**

![](./strategy/images/02.jpg)



![](./strategy/images/03.jpg)



### 2.3 最重要： Iterator 模式

**绝对要求**：
*实例* ： STL中Container遍历，不同的方式来遍历整个整合对象。 把在元素之间游走的责任交给迭代器，而不是聚合对象。

*UML:* 

![](./iterator/images/1.jpg)



**See:**

1. Head First Design Patterns ,chapter 9
2. 设计模式之禅，ch20
3. 大话设计模式，ch20



### 2.4 最重要：Command 模式

**绝对要求**：
*实例一：* 电视机遥控器
电视机是请求的接收者，遥控器是请求的发送者，遥控器上有一些按钮，不同的按钮对应电视机的不同操作。抽象命令角色由一个命令接口来扮演，有三个具体的命令类实现了抽象命令接口，这三个具体命令类分别代表三种操作：打开电视机、关闭电视机和切换频道。显然，电视机遥控器就是一个典型的命令模式应用实例

*实例二：*

很多系统都提供了宏命令功能，如UNIX平台下的Shell编程，可以将多条命令封装在一个命令对象中，只需要一条简单的命令即可执行一个命令序列，这也是命令模式的应用实例之一。

*UML*

![](./command/images/1.jpg)

![](./command/images/2.jpg)