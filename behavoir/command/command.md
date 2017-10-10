# Command Design Patterns

## Class Diagram

![](./images/1.jpg)

从图中可以看出：

1. `Invoker` 和 `Command` 接口之前应该互相知晓，所以也应该是互相有对方的指针。
2. `Command` 是抽象类（接口）
3. `Receiver` 和 `Client` 是 association 关系，表示 `Receiver`是`Client`的变量
4. `Client`和`ConcreteCommand`是depend关系，表示`ConcreteCommand`是通过`Client`的类构造方法及类方法的传入参数。
5. `Receiver`和`ConcreteCommand`是association关系，表示`ConcreteCommand`是 `Receiver`的一个变量。



* 通过constructor和setter传参数的就是dependency 关系
* ​



## Sequence Diagram

![](./images/2.jpg)