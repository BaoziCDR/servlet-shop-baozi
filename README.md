# 一、项目简介
这一个项目是电商管理系统的Servlet版，后端采用`Servlet`，前端（管理端）使用`Vue`、`BootStrap`等框架，数据库使用MySQL实现。

## 实现的功能

1. 管理员 权限管理 
2. 用户管理
3. 商品管理 （可添加图片）
4. 订单管理

## 用户端地址：

https://gitee.com/BaoziCDR/vue-shop-baozi



## 模块简介

权限管理 超级管理员admin可见，可以添加管理员，分配给对应的权限，admin默认拥有所有权限
分类管理
商品管理
订单管理
用户管理

## 访问地址：
http://localhost:8080/B2CSystem/Login

（前缀根据tomcat配置信息更改，若端口不是8080需要更改）

### admin账号信息

- 用户名：admin
- 密码：a123456

### API地址

在`scr`文件夹下的`controller`包里，点开相应的类有说明

#二、如何安装？

1.打开**Eclipse**，点击`File`->`import`
2.选择General->Existing Projects into Workspace
3.打开你电脑中存储这个项目B2CSystem的目录
4.配置server，选择tomcat相应版本
5.右键选择server，选中Add and Remove...
6.添加本项目B2CSystem
7.执行sql文件，导入数据库(在本项目根目录下b2c.sql)

Tip:
若出现CLASSNOTFOUND问题，可在根目录->WebRoot->lib目录下找到相应jar包，将对应缺失jar包引入tomcat目录下的lib下即可

