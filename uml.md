# UML 


## Dependency`use a`

![](./images/01.gif)



## Association `has a`

![](./images/02.gif)

```cpp
class Foo { 
public:
	void Baz(Bar bar) {
    } 
};
```
`Foo` and `Bar` is in association.

## Aggregation `own a`

![](./images/03.gif)

```cpp
class Foo { 
    private Bar bar; 
    Foo(Bar bar) { 
       this.bar = bar; 
    }
}
```


## Composition `is a part of`

![](./images/04.gif)

```cpp
class Foo {
private:
    Bar * m_bar;
}

```


