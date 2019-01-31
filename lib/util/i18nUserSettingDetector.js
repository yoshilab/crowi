module.exports = {
  name: 'userSettingDetector',

  lookup(req, res, options) {
    var lang = null

    if (req.user) {
      if ('lang' in req.user) {
        lang = req.user.lang || null
      }
    }

    return lang
  },

  cacheUserlanguage(req, res, lng, options) {
    // nothing to do
  },
}
