<template>
  <div class="social-section">
    <div id="valine"></div>
  </div>
</template>

<script type="text/ecmascript-6">

export default {
  name: 'Valine',
  mounted: function () {
    // require window
    if (typeof window !== 'undefined') {
      this.window = window
      window.AV = require('leancloud-storage')
    }
    const Valine = require('valine')// eslint-disable-next-line no-new
    new Valine({
      el: '#valine',
      appId: 'bXcmAj9ejPwtEqxByqIDK9a4-gzGzoHsz',
      appKey: 'sT0KwPd9Y991UsJ1MqNnmwuz',
      notify: false, // 邮件提醒!!!
      verify: false,
      avatar: 'robohash',
      pageSize: 10,
      visitor: true,
      recordIP: true,
      placeholder: 'Just Go Go .'
    })
  }
}
</script>

<style lang="stylus" rel="stylesheet/stylus" scoped>
  @import "../../../common/stylus/theme.styl"
  .v >>> .vlist .vcard .vh .vhead .vnick
    font-weight: bolder;
    font-size: 1em;
    color: rgba(0, 0, 0, 0.7);
  .v >>> .vlist .vcard .vh .vmeta .vat
    color: rgba(0, 0, 0, 0.7);
  .v >>> .info
    display: none
</style>
