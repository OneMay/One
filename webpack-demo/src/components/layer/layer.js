import './layer.less';
//import tpl from './layer.html';
import tpl from './layer.ejs';

function layer() {
	//alert(tpl);
	return {
		name: 'layer',
		tpl: tpl
	};
}

export default layer;