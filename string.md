# Python数据类型-str(字符串类型)

* 字符串就是引号(单、双和三引号)之间的字符集合。

* 单、双和三引号在使用上并无太大区别；

* 引号之间可以采取交叉使用的方式避免过多转义；

* 单、双引号实现换行必须使用续行符，而三引号可直接续行不必使用续行符号。

### 字符串乘法

例：

```
>>>print('*'*10)
**********
>>>print('abc'*10)
abcabcabcabcabcabcabcabcabcabc

```

* 用于实现字符串重复运用，可以利用该特性打印横幅或文本中分隔符的效果

### 字符串切割

例：

```
#索引方式，以0为起始-1为末尾起始表示字符串索引,用于获取字符串中单个字符
>>>'abc'[0]
'a'
>>>'abc'[2]
'c'
>>>'abc'[-1]
'c'
>>>'abc'[-3]
'a'

#切片方式,用于获取字符串中的一段字符，用冒号':'分隔要获取的首尾字符串索引，方式包括开头索引，但不包括结尾索引。
>>>'abcde'[1:3]
'bc'
>>>'abcde'[-3:-1]
'cd'

```

### 字符串常用方法

#### 类型.strip()
* 删除字符串开头、结尾处的空白符

```
>>>' abc  '.strip()
'abc'

```

#### 类型.lower()
* 将字符串小写

```
>>>'ABC'.lower()
'abc'
```

#### 类型.upper()
* 将字符串大写

```
>>>'abc'.upper()
'ABC'
```

### 字符串格式化

```
>>> print("{}bc{}".format('a','d'))
'abcd'
```

