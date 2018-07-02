# Python - list 列表

* list = ['value','value',...]

list列表为Python中内置的一种数据类型，list是一种有序的集合，可以随时添加和删除其中的元素


##方法

* len() :获取list元素的个数

* list[key] : 索引key方式访问相应位置的元素，key正数从0开始，倒数从-1开始，超出范围报错

* list.append(value) : 追加元素到list末尾

* list.insert(key,value) :将元素插入到指定key位置

* list.pop(key) : 无参数默认删除末尾的元素，指定key位置，删除key位置的元素

* list[key] = value : 将指定key位置的元素替换为value新元素

* list[s:e] : 取出索引从s开始到e结束，不包括e的元素

## 列表生成式

* list(): 将一个对象变成列表，对象为可迭代对象

* list(range(numbers)) : 将一个范围内的整数生成列表

* [ x for x in object] : 通过for循环遍历可迭代对象，生成列表

```
>>> [x for x in range(1,11)]
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

>>> [x*x for x in range(1,11)]
[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

>>> [x*x for x in range(1,11) if x %2 ==0]
[4, 16, 36, 64, 100]
 
>>> [x+y for x in 'abc' for y in 'xyz']
['ax', 'ay', 'az', 'bx', 'by', 'bz', 'cx', 'cy', 'cz']
```



