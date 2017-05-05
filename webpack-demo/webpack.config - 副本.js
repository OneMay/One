/*module.exports = {
	entry: ["./src/script/main.js", "./src/script/a.js"], //打包入口是从那个文件开始
	output: {
		path: __dirname + '/dist/js',
		filename: 'bundle.js'
	} //打包之后存放的位置
}*/
var htmlWebpackPlugin = require('html-webpack-plugin');
module.exports = {
	//context: , //运行环境上下文
	entry: {
		main: "./src/script/main.js",
		a: "./src/script/a.js",
		b: "./src/script/b.js",
		c: "./src/script/c.js"
	},
	output: {
		path: __dirname + '/dist',
		filename: "js/[name]-[hash].js",
		publicPath: 'http://cdn.com/'
	},
	plugins: [
			new htmlWebpackPlugin({
				filename: 'index.html',
				template: 'index.html', //模板
				inject: false, //脚本嵌入的位置
				title: 'webpack is good',
				date: new Date(),
				minify: {
					removeComments: true,
					collapseWhitespace: true
				}, //压缩
				//chunks: ['main', 'a']
				excludeChunks: [] //除了。。
			}),
			new htmlWebpackPlugin({
				filename: 'a.html',
				template: 'index.html', //模板
				inject: false, //脚本嵌入的位置
				title: 'this is a.html',
				//chunks: ['a']
				excludeChunks: ['b', 'c']
			}),
			new htmlWebpackPlugin({
				filename: 'b.html',
				template: 'index.html', //模板
				inject: false, //脚本嵌入的位置
				title: 'this is b.html',
				//chunks: ['b']
				excludeChunks: ['a', 'c']
			}),
			new htmlWebpackPlugin({
				filename: 'c.html',
				template: 'index.html', //模板
				inject: false, //脚本嵌入的位置
				title: 'this is c.html',
				//chunks: ['c']
				excludeChunks: ['b', 'a']
			})
		] //引入插件
}