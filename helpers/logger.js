var colors = require('colors'),
    logger = require('tracer').colorConsole({
        filters: {
            log: colors.yellow,
            info: colors.blue,
            warn: colors.magenta,
            error: [colors.red, colors.bold]
        },
        format: [
            "{{timestamp}} <{{title}}> {{message}} (in {{file}}:{{line}})",
            {
                error: "{{timestamp}} <{{title}}> {{message}} (in {{file}}:{{line}})\nCall Stack:\n{{stack}}"
            }
        ],
        dateformat: "HH:MM:ss.L"
    });

module.exports = logger;