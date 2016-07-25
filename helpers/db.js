var pg = require('pg'),
    logger = require('./logger'),
    common = require('./common'),
    pg_client = null,
    pg_done = null;

exports.db_init = function (cb) {
    pg.connect(common.getConfig('DB.PG_CONN'), function (err, client, done) {
        if (err) {
            if (client) {
                done(client);
            }
            logger.error('Error fetching client from pool', err);
            return cb && cb(null, {message: 'Error fetching client from pool', error: err});
        }
        pg_client = client;
        pg_done = done;
        cb && cb(true);
    });
};