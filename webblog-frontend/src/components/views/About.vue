<template>
  <div class="about">
    <img class="background" src="../../assets/background.gif" alt="">
    <!-- <img class="avatar" src="../../assets/avatar.png" alt=""> -->
    <p class="name ehsan-font">EhsanZhao</p>
    <p class="desc">say less and do more</p>
    <ul class="social">
      <li><a href="https://github.com/osalien" target="_blank"><img src="../../assets/icon/github.png" alt="Github"></a></li>
      <li><a href="https://stackoverflow.com/users/10779904/ehsanzhao" target="_blank"><img src="../../assets/icon/stackoverflow.png" alt="stackoverflow"></a></li>
      <li><a href="https://my.oschina.net/osalien?tab=newest&catalogId=0" target="_blank"><img src="../../assets/icon/oschina.png" alt="oschina"></a></li>
      <!-- <li><a href="https://juejin.im/user/5d090124e51d4577781173a1" target="_blank"><img src="../../assets/icon/segmentfault.png" alt=""></a></li> -->
      <li><a href="https://blog.csdn.net/qq_36940798" target="_blank"><img src="../../assets/icon/csdn.png" alt="csdn"></a></li>
      <!-- <li><a href="tencent://message/?uin=1578851175&Site=&Menu=yes" target="_blank"><img src="../../assets/icon/qq.png" alt=""></a></li> -->
      <li><a href="mailto:me@ehsanzhao.com" target="_blank"><img src="../../assets/icon/email.png" alt="email"></a></li>
    </ul>
  </div>
</template>

<script type="text/ecmascript-6">
export default {

}
</script>

<style lang="stylus" rel="stylesheet/stylus" scoped>
  @import "../../common/stylus/theme.styl";

  .about
    position relative
    text-align center
    border 1px solid $color-border
    padding-bottom 11px
    img.background
      position absolute
      top 50px
      left 0
      right 0
      width 100%
      height 125px
      z-index 1
    img.avatar
      position relative
      margin 6px auto 15px
      width 100px
      height 100px
      border 4px solid $color-gradually-gray-91
      border-radius 50%
      z-index 9
    .name
      font-size 30px
      color $color-typegraphy-title
      line-height 30px
      font-weight 700
      margin-top: 36px
    .desc
      font-size 15px
      color $color-secondary-info
      line-height 30px
      font-weight 100
    .social
      text-align center
      padding 0 34px
      margin-top 84px
      height 60px
      > li
        float left
        padding 8px
        a
          display block
          width: 36px
          height: 44px
          margin: auto
          img
            width 100%
    .line
      height 1px
      background-color $color-gradually-gray-91
      margin 10px 20px
    h4
      font-size 19px
      margin 30px 0 20px
      font-weight 600
    .progresses
      padding 0 20px
      p.title
        height 38px
        line-height 38px
        text-align right
      .bar
        margin 10px 0
</style>
