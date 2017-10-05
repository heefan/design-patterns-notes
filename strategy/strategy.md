# Strategy Pattern



* <u>behavioral</u> design patterm
* enables selecting an <u>algorithm</u> at runtime



## UML 

### Sequence Diagram 

![](./images/wiki.jpg)

解释：

1. `Context` 并不负责实现具体的`algorithm`，而是通过`strategy` interface。
2. 对于`Context`来说，只是负责和`strategy`沟通。





### Class Diagram 

![](./images/02.png)

1. `Context` 和 `Strategy` 是 Composition 关系。