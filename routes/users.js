var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function (req, res, next) {
    var menu = [];
    for (var i = 0, l = 1000; i < l; i++) {
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
    res.send(JSON.stringify(menu));
});

module.exports = router;
