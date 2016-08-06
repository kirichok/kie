var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {

    var menu = [
        {
            name: 'Навчання',
            icon: 'fa-globe',
            subitems: [
                {
                    name: 'Загальне',
                    icon: 'fa-desktop',
                    href: '#'
                },
                {
                    name: 'Бібліотека',
                    icon: 'fa-laptop',
                    href: '#'
                },
                {
                    name: 'Новини',
                    icon: 'fa-laptop',
                    href: '#'
                },
                {
                    name: 'Ресурси',
                    icon: 'fa-laptop',
                    href: '#'
                },
                {
                    name: 'Моя успішність',
                    icon: 'fa-laptop',
                    href: '#'
                },
                {
                    name: 'Допомога',
                    icon: 'fa-laptop',
                    href: '#'
                }
            ]
        },
        {
            name: 'Розваги',
            icon: 'fa-th',
            href: '#',
            alias: 'item1'
        },
        {
            name: 'Поїсти',
            icon: 'fa-th',
            href: '#',
            alias: 'item1'
        },
        {
            name: 'Культурні програми',
            icon: 'fa-th',
            href: '#',
            alias: 'item1'
        },
        {
            name: 'Спорт',
            icon: 'fa-th',
            href: '#',
            alias: 'item1'
        },
        {
            name: 'Робота',
            icon: 'fa-th',
            subitems: [
                {
                    name: 'Виконання робіт по навчанню',
                    icon: 'fa-desktop',
                    href: '#'
                }
            ]
        }
    ];

    res.render('ui', {title: 'Hello !!!', current_item: '', menu: menu});
});

module.exports = router;