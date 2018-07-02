# Python - set 

s = set(list|tuple)
s = {key1,key2,...}

* set是一组key的集合，不存储value

* set.add(key) :添加元素到set中,可重复添加但无效

* set.remove(key) :删除元素

* set可以堪称数学意义上的无序和无重复元素的集合,一次两个set可以做数学意义上的交集和并集等操作

```
s1 = {1,2,3}
s2 = {3,4,5}

交集:
>>> s1 & s2
{3}
并集:
>>> s1 | s2
{1,2,3,4,5}

```



