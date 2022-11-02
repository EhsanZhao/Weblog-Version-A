<template>
  <div class="common-footer">
    <p class="copyright">
      <img src="../../assets/gaicp.png" height="12px">&nbsp;
      <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32011802010105" target="_blank">
        {{ siteInfo.gaicp }}
      </a>
      <span>|</span>
      <a href="http://beian.miit.gov.cn" target="_blank">
        {{ siteInfo.icp }}
      </a>
      <span>|</span>
      {{ siteInfo.copyright }}
      <span>|</span>
      <span>本站已运行了 {{ siteInfo.copyright_desc }}</span>
    </p>
  </div>
</template>

<script type="text/ecmascript-6">
// import func from '../../../vue-temp/vue-editor-bridge';
export default {
  data () {
    return {
      siteInfo: {
        icp: '苏ICP备19018172号-3',
        gaicp: '苏公网安备 32011802010105号',
        copyright: '版权所有 © 2018 - 2020',
        copyright_desc: '0 天 0 时 0 分 0 秒'
      }
    }
  },
  methods: {
    setTime () {
      this.siteInfo.copyright = '版权所有 © 2018 - ' + new Date().getFullYear() ;
      let create_time = Math.round(new Date(Date.UTC(2018,12,1,0,0,0)).getTime() / 1000) ;
      let timestamp = Math.round((new Date().getTime() + 8 * 60 * 60 * 1000) / 1000) ;
        // eslint-disable-next-line camelcase
      let currentTime = this.secondToDate((timestamp - create_time)) ;
      let currentTimeHtml = currentTime[0] + ' 天 ' + currentTime[1] + ' 时 ' + currentTime[2] + ' 分 ' + currentTime[3] + ' 秒' ;
      this.siteInfo.copyright_desc = currentTimeHtml ;
    },
    secondToDate (second) {
      if (!second) {
        return 0;
      }
      var time = new Array(0, 0, 0, 0, 0);
      // if (second >= 365 * 24 * 3600) {
      //   time[0] = parseInt(second / (365 * 24 * 3600));
      //   second %= 365 * 24 * 3600;
      // }
      if (second >= 24 * 3600) {
        time[0] = parseInt(second / (24 * 3600));
        second %= 24 * 3600;
      }
      if (second >= 3600) {
        time[1] = parseInt(second / 3600);
        second %= 3600;
      }
      if (second >= 60) {
        time[2] = parseInt(second / 60);
        second %= 60;
      }
      if (second > 0) {
        time[3] = second;
      }
      return time;
    }
  },
  mounted () {
    setInterval(this.setTime, 1000);
  }
}
</script>

<style lang="stylus" rel="stylesheet/stylus">
  @import "../../common/stylus/theme.styl"
  .common-footer
    font-weight 300
    line-height 25px
    text-align center
    background $default-background-color
    border-top 1px solid $default-border-color
    z-index 99
  .copyright
    margin 10px
    color $default-title-color
    a
      color $default-link-color
      &:hover
        color $default-link-hover-color
</style>
