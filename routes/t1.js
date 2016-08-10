var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    var menu = [];
    for (var i = 0, l = 900; i < l; i++) {
        menu.push({
            name: 'Item ' + i,
            icon: 'fa-globe',
            alias: 'item' + i,
            subitems: []
        });
        for (var j = 0, m = 100; j < m; j++) {
            menu[i].subitems.push({
                name: 'Sub Item ' + j,
                icon: 'fa-globe',
                alias: 'subitem' + j,
                href: '#'
            });
        }
    }

    //console.log(JSON.stringify(menu));

    res.render('testt1', {title: 'Hello !!!', current_item: '', menu: menu});
});

module.exports = router;