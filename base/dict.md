# Python - dict 字典

dict = { key : value, key : value,...}

dict字典，使用键-值(key-value)存储，具有极快的查找速度

## 方法

* dict[key] = value :如果key及对应value不存在与字典dict中，则向字典中添加key与value，如果key在字典中存在对应的value值，则新的值value将替换原先的值,字典中一个key只能对应一个value值

* dict[key] : 查询key对应的value值，不存在key则报错

* key in dict : 判断key是否存在dict字典中,返回布尔值

* dict.get(key,[value]) :返回指定的key对应的值，如果key不存在则返回None,或者在第二个参数指定value,第二个参数指定的参数值，仅作为key不存在字典中时的返回值，不对原字典进行修改与添加 

* dict.pop(key) :删除key及对应的值,并返回其对应的值

## 注意

* dict内部存放的顺序与key放入的顺序是没有关系的

* dict特点: 1,查找和插入的速度极快，不会随着key的增加而增加; 2,需要占用大量的内存，内存浪费多;所以dict是用空间换取时间的一种方法

* dict的key必须是不可变对象

## 应用

* for...in... 迭代

```
默认迭代为key:
for key in dict

迭代为value:
for value in dict.values()

同时迭代:
for k,v in dict.items()





```








