require('./css/comment.css');
import layer from './components/layer/layer.js';
const App = () => {
	console.log(layer);
	var dom = document.getElementById('app');
	var Layer = new layer();
	dom.innerHTML = Layer.tpl({
		name: 'john',
		arr: ['apple', 'xiaomi', 'oppo']
	});
}

new App();