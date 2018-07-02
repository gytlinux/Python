# Python - generator 生成器

Python中一边循环一边生成的机制

## generator

### 创建

* 将一个列表生成器的方括号[]换成小括号()

```
列表生成器:
>>> L = [x for x in range(10)]
>>> L
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
生成器:
>>> g = (x for x in range(10))
>>> g
<generator object <genexpr> at 0x7f8f62884468>
>>> 

```

* 函数实现

例:
```
斐波拉契数列:除第一个和第二个数外，任意一个数都可有前两个数相加得到
def fib(max):
    n,a,b = 0,0,1
    while n < max:
        print(b)
        a,b = b,a+b
        n = n+1
    return 'done'

转变成生成器generator :将print(b) 变成yield b即可
def fib(max):
    n,a,b = 0,0,1
    while n < max:
        yield b
        a,b = b,a+b
        n = n+1
    return 'done'

>>> f = fib(6)
>>> f
<generator object fib at 0x7f8f62884410>

```

**注意:generator和函数执行流程不一样，函数式顺序执行，遇到return语句或者最后一行函数语句就返回。而generator函数每次调用next()执行，遇到yield语句返回，再次执行从上次返回的yield语句处继续执行**

**普通函数返回结果，generator函数返回一个generator对象**


### 执行

* next(g) : 获得generator的下一个返回值

* for x in g : generator为可迭代对象，可以用for循环获取值

## Iterator 迭代器

可用于for循环的数据类型包含集合数据类型，如list、tuple、dict、set、str等，generator生成器，这些对象被称为可迭代对象(Iterable)

判断是否为可迭代对象Iterbale
```
from collections import Iterable
isinstance(object,Iterable)
返回bool值

```

但生成器generator不只可以用for循环，还可以被next()函数不断调用并返回下一个值，直到抛出StopIteration错误无法继续返回下一个值，而可以被next()函数调用并不断返回下一个值的对象称为:迭代器Iterator

判断是否为迭代器:
```
from collections import Iterator
isinstance(object,Iterator)
返回bool值

```

生成器都是Iterator对象，但list、dict、str虽然是Iterable，却不是Iterator。把list等Iterable变成Iterator使用函数iter()


Python的Iterator对象表示的是一个数据流，Iterator对象可以被next()函数调用并不断返回下一个数据，知道没有数据时抛出StopIteration错误。可以把这个数据流看作时一个有序序列，但我们却不能提前知道序列的长度，只能不断通过next()函数实现按需计算下一个数据，所以Iterator的计算时惰性，只有在需要下一个数据时他才会计算

Iterator可以表示一个无限大的数据流，例如全体自然数，而使用list时永远不可能存储全体自然数的

















