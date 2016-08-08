var menu;

$(function () {
    $('.preloader-anim').removeClass("la-animate");
    $('.preloader').fadeOut(500);


    $.ajax({
        url: 'http://localhost:3000/menu',
        type: 'POST',
        jsonpCallback: 'callback', // this is not relevant to the POST anymore
        success: function (data) {
            //var ret = jQuery.parseJSON(data);

            console.log(data);

            $('body').append(data);
            console.log('Success: ');

            menu = new Menu();
            menu.init();
        },
        error: function (xhr, status, error) {
            console.log('Error: ' + error.message);
            //$('#lblResponse').html('Error connecting to the server.');
        }
    });
//menu = new Menu();
//menu.init();

});

function Modules() {
    this.modules = [];
    this.handler = null;

}

Modules.prototype.add = function (name, module) {
    if (!name || !module || typeof module.init !== 'function') {
        return false;
    }
    this.modules.push({name: name, module: module});
    return true;
};

Modules.prototype.get = function (name) {
    for (var i = 0, l = this.modules.length; i < l; i++) {
        if (this.modules[i].name === name) {
            return this.modules[i].module;
        }
    }
    return null;
};

Modules.prototype.setHandler = function (handler) {
    this.handler = handler;
};