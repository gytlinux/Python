# Python - loop 循环

为了实现多次重复的运算，需要用到循环语句

Python循环有两种，一种是for...in...循环，一种是while...循环

## for...in...

* 依次把list或tuple中的每个元素迭代出来

```
for i in list|tuple :
    code
    ...

```

依次把每个元素代入变量i,之后执行缩进块代码

* 迭代,通过collections模块的Iterable类型判断一个对象是否可迭代

```
from collections import Iterable
isinstance('abc',Iterable)

```

* enumerate() :把一个list变成索引-元素对，实现对list的下标循环

```
>>> for i in enumerate(l):
...     print(i)
... 
(0, 'a')
(1, 'b')
(2, 'c')
>>> for k,v in enumerate(l):
...     print(k,v)
... 
0 a
1 b
2 c

```




## while...

只要条件满足，就可以无限循环，条件不满足退出循环

```
while 条件:
    code
    ...

```


