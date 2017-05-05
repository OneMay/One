/*module.exports = {
	entry: ["./src/script/main.js", "./src/script/a.js"], //打包入口是从那个文件开始
	output: {
		path: __dirname + '/dist/js',
		filename: 'bundle.js'
	} //打包之后存放的位置
}*/
var path = require('path');
var htmlWebpackPlugin = require('html-webpack-plugin');
module.exports = {
	//context: , //运行环境上下文
	context: __dirname,
	entry: './src/app.js',
	output: {
		path: __dirname + '/dist',
		filename: "js/[name].bundle.js"
	},
	module: {
		loaders: [{
				test: /\.js$/,
				loader: 'babel-loader',
				exclude: path.join(__dirname, "node_modules"),
				include: path.join(__dirname, "src"),
				options: {
					'presets': ['env']
				} //处理js
			}, {
				test: /\.css$/,
				use: [{

					loader: 'style-loader'

				}, {

					loader: 'css-loader?importLoaders=1'
				}, {
					loader: 'postcss-loader',
					options: {
						plugins: function() {
							return [require('autoprefixer')({
								browsers: ["last 5 versions"]
							})];
						}
					}
				}]
			}, {
				test: /\.less$/,
				use: [{
					loader: 'style-loader'
				}, {
					loader: 'css-loader',
					options: {
						importLoaders: 1
					}
				}, {
					loader: 'postcss-loader',
					options: {
						plugins: function() {
							return [require('autoprefixer')];
						}
					}
				}, {
					loader: 'less-loader'
				}]
			}, {
				test: /\.scss$/,
				use: [{
					loader: 'style-loader'
				}, {
					loader: 'css-loader',
					options: {
						importLoaders: 1
					}
				}, {
					loader: 'postcss-loader',
					options: {
						plugins: function() {
							return [require('autoprefixer')];
						}
					}
				}, {
					loader: 'sass-loader'
				}]
			}, {
				test: /\.html$/,
				include: path.join(__dirname, "src"),
				use: [{
					loader: 'html-loader'
				}]
			}, {
				test: /\.ejs$/,
				use: [{
					loader: 'ejs-loader'
				}]
			}, {
				test: /\.(png|jpg|gif|woff|woff2|eot|ttf|svgs)$/i,
				use: [{
					loader: 'url-loader',
					options: {
						limit: 20000,
						name: 'images/[name]-[hash:5].[ext]'
					}
				}, {
					loader: 'img-loader'
				}]
			}] //处理资源文件
	},
	plugins: [
			new htmlWebpackPlugin({
				filename: 'index.html',
				template: 'index.html', //模板
				inject: 'body', //脚本嵌入的位置
				title: 'webpack is good'
			})
		] //引入插件
}