# UML 图例及其含义

UML自我之问?

1. 各个图例对应的代码意义是什么?

   ​

|             |                  |                                         |                                |
| ----------- | ---------------- | --------------------------------------- | ------------------------------ |
| Dependency  | `uses a`         | <img src="./images/01.gif" width="20%"> |                                |
| Association | `Knows a`        | <img src="./images/02.gif" width="20%"> |                                |
| Aggregation | `own a`, `Has a` | <img src="./images/03.gif" width="20%"> | 使用 Association 替代 Aggregation. |
| Composition | `Has a`          | <img src="./images/04.gif" width="20%"> |                                |
|             |                  |                                         |                                |
| Inheritance | `is-a`           |                                         |                                |

https://www.ibm.com/support/knowledgecenter/SS8PJ7_8.0.4/com.ibm.xtools.viz.cpp.doc/topics/cdependency.html



## 代码示例:

### Dependency `uses-a`

```c++
class X {
  void f(Y y) { ..; y.foo(); }
}
```

X 和 Y 之间没有从属关系(不是成员变量), 只是"利用" Y,是某个成员函数的传入参数.
`uses-a` 是什么? 就是用到才想到.

这种关系相当于一般朋友关系,有事情需要一个朋友帮忙,就打电话给他,办完这件事就完了.

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

// usage
int main() {
  Y y();
  X x(&y);
  //...
}
```

解析: Y 是 X 的成员变量, 但是 Y 是通过外界参数传入给 X. `knows-a`, "知道" 更明确的中文应该是"熟知",表示什么? 我使用它,但是我不拥有它的生死.
这种关系相当于" wife", 你非常了解,他是你没有办法控制她.



### Composition (`has-a`)
```c++
class X {
public:
  X() { _a = new Y[10]; }
  ~X() { delete [] _a; }
  
private:
  Y *_a;
}
```

最关键的问题是: Composition 和 Association 有什么区别?
这里虽然 Y 是 X 的成员变量, 但是这里 Y不是通过外界传入, 就是 X 自身管理其生存周期.
所以, `has` 表示什么? 拥有, 你拥有就要有负责其死活.
这种关系相当于你的物品,比如我的"钱包", 我可以完全控制它的生死.







## 解惑

dependency 和 association 有什么区别?

https://stackoverflow.com/questions/1230889/difference-between-association-and-dependency





