# UML 图例及其含义

|             |           |                                         |
| ----------- | --------- | --------------------------------------- |
| Dependency  | `uses a`  | <img src="./images/01.gif" width="20%"> |
| Association | `Knows a` | <img src="./images/02.gif" width="20%"> |
| Aggregation | `own a`   | <img src="./images/03.gif" width="20%"> |
| Composition | `Has a`   | <img src="./images/04.gif" width="20%"> |
|             |           |                                         |
| Inheritance | `is-a`    |                                         |





## 代码示例:

### Dependency `use-a` 

```c++
class X {
  void f(Y y) { ..; y.foo(); }
}
```

X 和 Y 之间没有从属关系(不是成员变量), 只是"利用" Y,是某个成员函数的传入参数.

https://www.ibm.com/support/knowledgecenter/SS8PJ7_8.0.4/com.ibm.xtools.viz.cpp.doc/topics/cdependency.html



### Associate (`knows-a`)

```c++
class X {
  X(Y *y) : m_yPtr(y) {
  }
  
  void setY(Y *y);
  Y* y() const;
  
private:
  Y * m_yPtr; 
}
```

解析: Y 是 X 的成员变量.



## 解惑

dependency 和 association 有什么区别?

https://stackoverflow.com/questions/1230889/difference-between-association-and-dependency





