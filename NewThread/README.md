### 一.简介

    1.项目集成Spring + MyBatis + Shiro;

    2.同时采用Encache做数据库缓存，没做Shiro缓存（不值得）

	3.已集成Jetty,安装JDK和maven的话运行 mvn jetty:run即可运行、测试

    4.目前工程的名称为NT_Official_Website_Update_v1.0，即：
        在各个接口说明中的“前缀”为 ：http://x.x.x.x:8080/NT_Official_Website_Update_v1.0
        等到项目测试上线后“前缀”会改成：http://x.x.x.x:8080
		开发时可以先照第一个填，上线时改过来就行

		4.1.临时测试地址:
		    http://123.206.110.123:8080/NT_Official_Website_Update_v1.0

        4.2.如果按照步骤四启动服务的话
            可通过以下地址测试接口:http://localhost:8080/NT_Official_Website_Update_v1.0


### 二.目录介绍

    /bin : 可执行二进制文件；

    /doc : 接口及相关文档说明；

    /official-common : 通用模块；

    /tools : 各种工具;

    /official-web/src/main :

        --- java : 后台代码；

        --- resources : 资源文件；

        --- test : 测试用例；

        --- webapp :
            在此编写前端页面；
            --- static : 静态资源,如css / js 等；


### 三.开发要点
    
    找不到Kaptcha这个库:
        https://my.oschina.net/gently/blog/631738




