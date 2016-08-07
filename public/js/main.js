var menu;

$(function () {
    $('.preloader-anim').removeClass("la-animate");
    $('.preloader').fadeOut(500);

    menu = new Menu();
    menu.init();


});

function Modules() {
    this.modules = [];
}

Modules.prototype.add = function (name, module) {
    if (!name || !module || typeof module.init !== 'function') {
        return false;
    }
    modules.push({name: name, module: module});
    return true;
};

Modules.prototype.get = function (name) {
    for (var i = 0, l = modules.length; i < l; i++) {
        if (modules[i].name === name){
            return modules[i].module;
        }
    }
    return null;
};