## 本项目实现的最终作用是基于SSH在线电子商城网站
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改密码
 - 列表管理
 - 商品种类管理
 - 用户列表管理
 - 管理员登录
 - 订单列表管理
### 第2个角色为用户角色，实现了如下功能：
 - 修改个人信息
 - 修改密码
 - 提交订单
 - 查看商品详情
 - 查看我的订单
 - 查看购物车
 - 查看首页
 - 用户登录
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_zxdzshop

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [admins](#admins) |  |
| [commodityclasses](#commodityclasses) |  |
| [commoditys](#commoditys) |  |
| [message](#message) | 留言信息表 |
| [orderform](#orderform) |  |
| [users](#users) |  |

**表名：** <a id="admins">admins</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | adminId |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  3   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |

**表名：** <a id="commodityclasses">commodityclasses</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | commodityClassId |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | commodityClassName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="commoditys">commoditys</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | commodityId |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | commodityAmount |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | commodityDepict |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | commodityLeaveNum |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | commodityName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | commodityPrice |   double   | 11 |   0    |    Y     |  N   |   NULL    |   |
|  7   | image |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 图片  |
|  8   | manufacturer |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | webPrice |   double   | 11 |   0    |    Y     |  N   |   NULL    |   |
|  10   | commodityClass_commodityClassId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="message">message</a>

**说明：** 留言信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | messageId |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | messagetext |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | messagetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | messagetitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |

**表名：** <a id="orderform">orderform</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | orderFormID |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | submitTime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | consignmentTime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | totalPrice |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | remark |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  6   | isPayoff |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | isConsignment |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  9   | orderFormNum |   bigint   | 20 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="users">users</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | UserId |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  5   | address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  6   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  7   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  8   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  9   | post |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | money |   double   | 23 |   0    |    Y     |  N   |   NULL    | 金额  |

