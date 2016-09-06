var menu;

$(window).on('load', function(){
    //Preloader
    setTimeout(function(){
        $('.preloader-anim').removeClass("la-animate");
    }, 600);

    setTimeout(function(){
        $('.preloader').fadeOut(500);
    }, 800);
});

var originalText = $(".loading-anim").text(),
    i  = 0;
setInterval(function() {

    $(".loading-anim").append(".");
    i++;

    if(i == 4)
    {
        $(".loading-anim").html(originalText);
        i = 0;
    }

}, 300);

if($(window).width() < 481){
    $("body").addClass("mobile-view");
}
else{
    $("body").removeClass("mobile-view");
}
$(window).resize(function () {
    if ($(window).width() < 481) {
        $("body").addClass("mobile-view");
    }
    else {
        $("body").removeClass("mobile-view");
    }
});

$(function () {
    /*$('.preloader-anim').removeClass("la-animate");
    $('.preloader').fadeOut(500);*/


    //$.ajax({
    //    url: 'http://localhost:3000/menu',
    //    type: 'POST',
    //    jsonpCallback: 'callback', // this is not relevant to the POST anymore
    //    success: function (data) {
    //        //var ret = jQuery.parseJSON(data);
    //
    //        console.log(data);
    //
    //        $('body').append(data);
    //        console.log('Success: ');
    //
    //        menu = new Menu();
    //        menu.init();
    //    },
    //    error: function (xhr, status, error) {
    //        console.log('Error: ' + error.message);
    //        //$('#lblResponse').html('Error connecting to the server.');
    //    }
    //});

    menu = new Menu();
    //menu.build(menu.testData());
    menu.init();
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