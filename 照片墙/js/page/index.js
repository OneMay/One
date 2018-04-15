function Index(col, row) {
    this.options = {
        column: col,
        row: row,
        warpUlDom: $('.warp-ul'),
        width: $('.warp-ul').width(),
        height: $('.warp-ul').height(),
        w: $('.warp-ul').width() / col,
        h: $('.warp-ul').height() / row
    }
    this.insertDom(col, row);
    this.bindEvevtUl();
}
Index.prototype.insertDom = function(col, row) {
    var w = this.options.width / this.options.row;
    var h = this.options.height / this.options.column;
    var warpUlDom = this.options.warpUlDom;
    for (var i = 0; i < col; i++) {
        for (var j = 0; j < row; j++) {
            $('<li><div><img src=""></div></li>').css({
                    "positon": "absolute",
                    "left": j * w + 'px',
                    "top": i * h + 'px',
                    "width": w + 'px',
                    "height": h + 'px'
                }).find('img').attr('src', './img/' + (i * row + j + 1) + '.jpg')
                .end()
                .find('div').css({
                    "transform": 'rotate(' + (Math.random() * 60 - 30) + 'deg) translateZ(' + (Math.random() * 700 - 600) + 'px) translateX(' + (Math.random() * 40 - 20) + 'px) translateY(' + (Math.random() * 40 - 20) + 'px)'

                }).end().appendTo(warpUlDom);


        }
    }

}
Index.prototype.bindEvevtUl = function() {
    var _self = this;
    var w = this.options.w;
    var h = this.options.h;
    var width = this.options.width;
    var position = 0;
    var change = true,
        row = this.options.row;
    $('div').click(function(e) {
        e.stopPropagation();
        var ul = ['img', 'div']
        var $this = $(this);
        console.log(e)
        if (ul.indexOf(e.target.localName) >= 0) {

            if (change) {
                var path = $this.find('img').attr('src');

                $('li').find('div').css({
                    "opacity": '1',
                    "transform": 'scale(1) rotate(0deg) translateZ(0px) translateX(0px) translateY(0px)'
                }).end().find('img').css({
                    "transform": 'scale(1)',
                    "width": _self.options.width + 'px',
                    "height": _self.options.height + 'px',
                }).attr('src', path);



                $('img').each(function(index) {
                    var i = Math.floor((index) / _self.options.row)
                    var j = (index) % _self.options.row
                    position = j * w

                    $(this).css({
                        "position": 'absolute',
                        "left": -position + 'px',
                        "top": -i * h + 'px',
                    })
                    if (position > width) {
                        position = 0;
                    }

                })
                change = false;
            } else {

                $('li div').each(function(index) {
                    $(this).css({
                        'width': "50px",
                        "height": "50px",
                        "transform": 'rotate(' + (Math.random() * 60 - 30) + 'deg) translateZ(' + (Math.random() * 700 - 600) + 'px) translateX(' + (Math.random() * 40 - 20) + 'px) translateY(' + (Math.random() * 40 - 20) + 'px)'
                    })
                })
                $('li div').animate({ "width": "100%", "height": '100%' }, 1000)
                $('img').each(function(index) {
                    var i = Math.floor((index) / _self.options.row)
                    var j = (index) % _self.options.row
                    position = j * w
                    $(this).removeAttr("style").attr('src', './img/' + (i * row + j + 1) + '.jpg')
                })

                change = true
            }
        } else {
            return;
        }
    })
}
new Index(4, 4)