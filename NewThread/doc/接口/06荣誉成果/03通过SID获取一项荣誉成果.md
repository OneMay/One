#### /honor/gbs.do
---------------------------

#### 接口说明
- 通过Sid获取荣誉

#### URL
- 前缀 /honor/gbs.do

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
| id  |  int |  荣誉类型请参考荣誉类型.md|

#### 注意事项

#### 返回结果
- 正确：

		{
			{
			  "honorSid": 192,
			  "honorPicture": null,
			  "honorTime": null,
			  "honorType": null,
			  "honorTimesstamp": null,
			  "honorIntroduce": "获奖啦！！！1",
			  "honorNote": null
			},
			{
			  "honorSid": 193,
			  "honorPicture": null,
			  "honorTime": null,
			  "honorType": null,
			  "honorTimesstamp": null,
			  "honorIntroduce": "获奖啦！！！2",
			  "honorNote": null
			},
			{
			  "honorSid": 194,
			  "honorPicture": null,
			  "honorTime": null,
			  "honorType": null,
			  "honorTimesstamp": null,
			  "honorIntroduce": "获奖啦！！！3",
			  "honorNote": null
			}
		  ]
		}

- 错误：

	{
		"code":"E01",
		"message":"数据库无记录！",
		"content":null
	}


#### 返回字段说明

|返回值字段|字段类型|字段说明|
|:----------:|:--------:|:---------:|
| honorSid  |  int |  新闻ID |
| honorPicture| int | 新闻包含的图片 |
| honorTime|int|获奖时间|
| honorType|int|获奖类型|
| honorTimesstamp| int | 时间戳 |
| honorIntroduce|int|正文|
| honorNote|int|备注|

#### 其他