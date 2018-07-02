# python function



## 自定义函数

```
def name(x) :
    code
    return x

```

* 定义函数使用def语句,依次写出函数名，括号，括号中的参数，和冒号;然后再缩进块中编写函数体代码，返回值用return语句返回，如果没有return语句，返回结果为none

* 外部调用，如果把定义好的函数保存在filename.py文件中，在当前目录调用from filename import 函数名

* 定义空函数，用pass语句

* 函数参数类型检查 : 

isinstance(参数,(int,float,...)) : 第一个参数为函数的参数，第二个参数为数据类型，如果参数的数据类型，符合第二个参数指定的类型之一，返回true

```
def test(x):
    if not isinstance(x,(int,float)):
        raise TypeError('bad operand type')
    ...

```

* 函数返回值可为多个，为一个tuple元组，多个变量可接受一个tuple，按位置赋予对应的值


### 参数

* 位置参数: def name(x,y) x,y为位置参数，调用函数时必须向x,y传入值,根据x,y位置传入相应的值与x,y对应

* 默认参数: def name(x,y=2) y为默认参数，y定义了默认的值，所以在调用函数时，y可不用再传入值，采用默认值。必选参数必须在前，默认参数在后且变化大的参数放在前。默认参数必须指向不变对象

* 可变参数 : def name(\*x) 在参数前加一个*号，参数x接收到的是一个tuple，如果要传入的参数为一个list或tuple变量，则在变量前加*号，就可将list或tuple变量当作可变参数传入函数

* 关键字参数 : def name(\**x) 可传入0个或任意个含参数名的参数，关键字参数在函数内部自动组成一个dict，如name(test='hello') 函数内部 {'test':hello},如传入已有的dict，全部传入 name(\**dict) ,单个传入 name(key=dict[key])

* 命名关键字参数 : def name(x,*,key) 限制关键字参数的名字，*后面的参数为命名关键字参数，调用name('test',key='hello') key必须与定义时的key相同


* 参数定义顺序 : 必选参数 , 默认参数 , 可变参数/命名关键字参数 , 关键字参数


### 匿名函数

关键字lambda表示匿名函数，匿名函数只能有一个表达式，不同写return，返回值就是表达式的结果，因为匿名函数没有名字，所以不必担心函数命名冲突，匿名函数也是一个函数对象，也可以把匿名函数赋值给一个变量，再利用变量调用函数

冒号前的x表示函数参数

```
f = lambda x: x*x

```



