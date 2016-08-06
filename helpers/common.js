var config = require('config'),
    logger = require('./logger'),
    fs = require('fs');

/**
 * Get config parameter value
 *
 * @param param - config parameter name
 * @param alternative - if config parameter is absent, alternative value will be used
 * @returns {*}
 */
function getConfig(param, alternative) {
    var val;

    if (config.has(param)) {
        val = config.get(param)
    } else {
        logger.warn('Parameter is not found in the config:', param);
        if (typeof alternative != 'undefined') {
            logger.log('So, use alternative value:', alternative);
            val = alternative;
        } else {
            logger.warn('Parameter default value is not set. So, use NULL value.');
            val = null;
        }
    }
    return val;
}

function getAllRoutes(){
    var routes = [];

    fs.readdirSync(__dirname + '/../routes').forEach(function(item) {
        var r = item.split('.');
        if (r[0] != undefined && r[0] != '') {
            routes.push(r[0]);
        }
    });

    return routes;
}

/*
items = [{
    name: 'item1',
    icon: function(){return 'class';},
    disable: function(key, opt){}, //return true - disabled, false - enabled
    visible: function(key, opt){}, //return true - show, false - hide
    callback: function(key, opt){}
}];
*/

function createContextMenu(selector, items, className) {
    var items = {};

    $.contextMenu('destroy', selector);

    arrNamesOfElement.forEach(function (elem, i) {
        items[i] = {
            name: elem,
            callback: arrFunction[i],
            disabled: itemDisabled,
            visible: itemVisible
        };
    });

    $.contextMenu({
        selector: selector,
        autoHide: false,
        reposition: false,
        className: className ? className : '',
        items: items
    });
    showToolTipForLeftPanel($('ul.main-left-menu   a'));
}

exports.getConfig = getConfig;
exports.getAllRoutes = getAllRoutes;