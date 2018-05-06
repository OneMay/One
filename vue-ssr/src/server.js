const server = require('express');
const path = require('path')
const App = server();
const fs = require('fs')
App.use(server.static(path.join(path.resolve(__dirname, '..'), 'dist')));
// const createApp = require('./dist/vue-ssr-server-bundle.json').files['server-bundle.js']
const serverBundle = require('./../dist/vue-ssr-server-bundle.json')
const clientManifest = require('./../dist/vue-ssr-client-manifest.json')
    // const renderer = require('vue-server-renderer').createRenderer({
    //     template: require('fs').readFileSync('./page/test.html', 'utf-8')
    // });
var template = require('fs').readFileSync('./page/test.html', 'utf-8');
const { createBundleRenderer } = require('vue-server-renderer')

const createRenderer = (bundle, options) => createBundleRenderer(bundle, Object.assign(options, {
    // for component caching

    // recommended for performance
    runInNewContext: false
}));
let renderer = createRenderer(serverBundle, {
    template,
    clientManifest
});
App.get('*', (req, res) => {
    const contexts = {
        title: 'hello world',
        url: req.url,
        meta: `<meta name="description" content="bilibili是国内知名的视频弹幕网站，这里有最及时的动漫新番，最棒的ACG氛围，最有创意的Up主。大家可以在这里找到许多欢乐。">
         <meta name="keywords" content="B站,弹幕,字幕,AMV,MAD,MTV,ANIME,动漫,动漫音乐,游戏,游戏解说,ACG,galgame,动画,番组,新番,初音,洛天依,vocaloid">
         <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">`
    }

    if (!req.url.includes('.js')) {


        renderer.renderToString(contexts, (err, html) => {

            if (err) {
                console.log(err)
                if (err.code === 404) {
                    res.status(404).end('Page not found')
                } else {
                    res.status(500).end('Internal Server Error')
                }
            } else {
                res.end(html)
            }
        })
    } else {
        const file = fs.readFileSync('./..' + req.url, 'utf-8');
        res.end(file)
    }
})

App.listen(8080);
console.log('http://127.0.0.1:8080')