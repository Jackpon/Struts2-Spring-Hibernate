# Struts2-Spring-Hibernate
存放个人SSH练习项目

- movies 
关于电影网demo，效果如下

![img](https://github.com/Jackpon/Struts2-Spring-Hibernate/tree/master/gif/search.gif)

![img](https://github.com/Jackpon/Struts2-Spring-Hibernate/tree/master/gif/ilike.gif)

- **项目介绍**
 	影视网demo网站，前端布局boostrap+js，后端Struts2+Spring，持久化层Hibernate、数据库mysql+redis；
 	实现功能：用户登录注册、我喜欢、搜索、分页、layui列表；
 	主要知识点：
 	- 拦截器，比如用户在未登录状态下点击“喜欢”，将会被拦截请求，通过判断来进一步后续操作；
 	- Spring的自动装配和注解，Spring的高效原因之一就是首次加载项目时就配置好所需的基本环境，比如Action类和组件；
 	- 使用getHibernateTemplate()实现对数据库对操作；