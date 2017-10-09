# Strategy Pattern

## Motiviation

1. 完成一项任务有多种策略，根据当前条件，自主选择合适的策略。 

我的个人体会是，作为`context`来说不需要知道策略具体的实现，他要做的就是告诉一个`策略管理经理`，我现在需要谁来做什么事情。



## Definition

策略模式定义了一系列算法，将每个算法封装起来，并让他们互相替换。策略模式让算法独立于使用它的客户变化。

GOF 定义：（todo）



## Structure of the Strategy

1. `Context` 环境类
2. `Strategy` 抽象策略类
3. `ConcreteStrategy` 具体策略类。

## UML

### Sequence Diagram

![](./images/03.jpg)

解释：

0. `iMain` 作为主程序先建立逻辑上下文 `Context`
1. iMain 负责建立A策略
2. iMain 负责告诉Context，一会iMain要使用A策略。
3. iMain 通过Context调用A策略。
4. iMain 负责创建B策略
5. iMain 负责告诉Context，下边我要用B策略。
6. iMain 通过Context调用B策略。



**小品：**

经理iMain带着助理（Context）去给客户做演示。之前先和工程师A（Strategy A）和工程师B（Strategy B）说好，一会演示时候，助理（Context）会联系你演示什么。

演示期间，经理iMain告诉助理Context现在要演示algorithm()这个产品，快去叫工程师A去演示。
一会儿，经理iMain告诉助理Context现在演示另一个产品，快去叫工程师B去演示。



**问题：**

很显然，在实际工作的时候，经理根本不需要知道工程师A和工程师B。
对于经理来讲，更重要是逻辑框架。比如，
CEO去给投资人路演，CTO负责演示。
CEO告诉CTO去演示项目1，项目2， 项目3等等。
CTO根据指示去演示。 CEO根本不需要知道哪个工程师去演示，那么多工程师CEO怎么可能都认识。

回头想一下这个前提条件：
也就说，当项目规模很小的时候，比如5个人的团队，那么经理显然都知道context和工程师，那么可以用strategy的方法。
如果是大规模项目，100个人的项目，那么经理显然去记忆每个人的名字是一种负担。

### Class Diagram

![](./images/02.jpg)

1. `Context` 和 `Strategy` 是 Composition 关系，对等的同事关系
2. Context 需要知道当前我在用哪个具体的Strategy。
3. Context 也需要知道具体执行方法的名字，才能去转发给具体的Strategy。



## Reference

Head First, Design Patterns, Chapter1 Introduction to design patterns (Strategy)



