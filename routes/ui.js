var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    var menu = [
        {
            name: 'Навчання',
            icon: 'fa-globe',
            alias: 'study',
            subitems: [
                {
                    name: 'Загальне',
                    icon: 'fa-desktop',
                    alias: 'general',
                    href: '#'
                },
                {
                    name: 'Бібліотека',
                    icon: 'fa-laptop',
                    alias: 'library',
                    href: '#'
                },
                {
                    name: 'Новини',
                    icon: 'fa-laptop',
                    alias: 'news',
                    href: '#'
                },
                {
                    name: 'Ресурси',
                    icon: 'fa-laptop',
                    alias: 'resource',
                    href: '#'
                },
                {
                    name: 'Моя успішність',
                    icon: 'fa-laptop',
                    alias: 'my_study',
                    href: '#'
                },
                {
                    name: 'Допомога',
                    icon: 'fa-laptop',
                    alias: 'help',
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
            alias: 'eat'
        },
        {
            name: 'Культурні програми',
            icon: 'fa-th',
            href: '#',
            alias: 'cultural'
        },
        {
            name: 'Спорт',
            icon: 'fa-th',
            href: '#',
            alias: 'sport'
        },
        {
            name: 'Робота',
            icon: 'fa-th',
            alias: 'work',
            subitems: [
                {
                    name: 'Виконання робіт по навчанню',
                    icon: 'fa-desktop',
                    href: '#',
                    alias: 'help_student'
                }
            ]
        }
    ];

    res.render('test', {title: 'Hello !!!', current_item: '', menu: menu});
});

module.exports = router;