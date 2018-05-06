const koa = require('koa');
const router = require('koa-route');

const app = new koa();

const main = ctx => {
    ctx.response.body = 'Hello world';
};

const welcome = (ctx, names) => {
    ctx.response.body = 'Hello' + names;
};

app.use(router.get('/', main));
app.use(router.get('/:name', welcome));

app.listen(3000);
console.log('listening on port 3000');