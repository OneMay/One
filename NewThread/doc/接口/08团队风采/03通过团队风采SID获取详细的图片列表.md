#### /honor/gbs.do

---------------------------

#### 接口说明

- 通过Sid获取荣誉

#### URL
- 前缀 /mien/photos.do

>前缀的说明请看README.md

#### HTTP请求方式
- GET

#### 是否需要登录
- 否

#### 访问授权限制
- 访问级别：普通接口
- 频次限制：否

#### 参数类型
- 普通URL参数

#### 请求参数
|参数字段|字段类型|字段说明|
|:----------:|:--------:|:---------:|
| sid  |  int | 从获取列表返回的缩略信息中获取|

#### 注意事项

#### 返回结果
- 正确：

        [
            {
                "imgSid": 7,
                "imgPath": "/photos/2604564f-b3f9-4654-b46f-2bb3d428fc11.png",
                "imgComment": null
            },
            {
                "imgSid": 8,
                "imgPath": "/photos/d0953798-f506-4f1c-aac8-ee3d47de1fbd.png",
                "imgComment": null
            }
        ]

- 错误：

	{
		"code":"E01",
		"message":"数据库无记录！",
		"content":null
	}


#### 返回字段说明

|返回值字段|字段类型|字段说明|
|:----------:|:--------:|:---------:|
| imgSid  |  string |  ID |
| imgPath| string | 路径路径,相对于项目的路径 |
| imgComment|string|其它信息|


#### 其他