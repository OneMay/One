#### /admin/login.do
---------------------------

#### 接口说明
- 在需要登录时直接get这个接口即完成登录，免掉开发时期繁琐的登录

#### URL
- 前缀/admin/noLogin.do

>前缀的说明请看README.md

#### HTTP请求方式
- GET

#### 是否需要登录
- 否

#### 访问授权限制
- 访问级别：普通接口
- 频次限制：否

#### 参数类型
- JSON

#### 请求参数
无

#### 注意事项

#### 返回结果
- 正确：

		{
		  "code": null,
		  "message": "登陆成功!",
		  "content": "http://localhost:8080/NT_Official_Website_Update_v1.0"
		}

- 错误：

		{
		  "code": null,
		  "message": "错误原因!",
		  "content": "http://localhost:8080/NT_Official_Website_Update_v1.0"
		}


#### 返回字段说明
- 无

#### 其他