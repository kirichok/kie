var config = require('config'),
    logger = require('./logger');

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

exports.getConfig = getConfig;