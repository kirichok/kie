function Menu() {
    this.$ = {
        content: {
            wrap: $('#wrap-site')
        },
        menu: {
            wrap: $('#main-menu'),
            container: $('#menu'),
            btn_open: $('#menu-btn-open'),
            btn_close: $('#menu-btn-close'),
            btn_back: $('#menu-btn-back'),
            span: $('#menu span'),
            li: $('#menu li')
        },
        /*overlay: {
            container: $('#overlay')
        }*/
    };
}

Menu.prototype.init = function () {
    var self = this;
    this.$.menu.btn_open.click(function (e) {
        self.open();
    });
    this.$.menu.btn_close.click(function (e) {
        self.close();
    });

    for (var i = 0, l = this.$.menu.span.length; i < l; i++) {
        $(this.$.menu.span[i]).click(function (e) {
            self.$.menu.container.addClass('sub-active');
            $(this).parent().addClass('active');
        });
    }

    this.$.menu.btn_back.click(function (e) {
        self.$.menu.container.removeClass('sub-active');
        for (var i = 0, l = self.$.menu.li.length; i < l; i++) {
            $(self.$.menu.li[i]).removeClass('active');
        }
    });

    /*this.$.overlay.container.click(function (e) {
        self.close();
    });*/

    this.active('study');
};

Menu.prototype.open = function () {
    this.$.content.wrap.addClass('menu-active');
    this.$.menu.wrap.addClass('active');
    /*this.$.overlay.container.addClass('active');*/
};

Menu.prototype.close = function () {
    this.$.content.wrap.removeClass('menu-active');
    this.$.menu.wrap.removeClass('active');
   /* this.$.overlay.container.removeClass('active');*/
};

Menu.prototype.active = function (alias) {
    var el;
    if (alias){
        for (var i = 0, l = this.$.menu.span.length; i < l; i++) {
            el = $(this.$.menu.span[i]).parent();
            console.log(el);
            if (el.attr('alias') == alias){
                this.$.menu.container.addClass('sub-active');
                el.addClass('active');
            }
        }
    }
};
