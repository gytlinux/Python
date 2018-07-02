# Python - tuple 元组

* tuple = ('value','value',...)

tuple元组与list列表类似，但tuple元组一旦定义就不能修改

## 方法

* tuple[key] :通过索引位置key，来访问元素，正数从0开始，倒数从-1开始，超出报错

* tuple[s:e] : 取出索引s到e，不包括e的元素

## 注意

* 定义空元组 : tuple = ()

* 定义一个元素的tuple: tuple = (value,) 元素后必须添加逗号,否则定义的tuple不是元组而是一个值

* tuple不变，但如果元素指向的对象是可以变的,则不会影响，如其中一个元素是一个列表list，则list中的值可以进行改变


