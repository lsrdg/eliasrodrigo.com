<template>
  <main
    class="home"
    aria-labelledby="main-title"
  >
    <header class="hero">
      <img
        v-if="data.heroImage"
        :src="$withBase(data.heroImage)"
        :alt="data.heroAlt || 'hero'"
      >
      <div class="text-on-img">By Manuel Gomez</div>

      <h1
        v-if="data.heroText !== null"
        id="main-title"
      >
        {{ data.heroText }}
      </h1>

      <p
        v-if="data.tagline !== null"
        class="description"
      >
        {{ data.tagline }}
      </p>

      <p
        v-if="data.actionText && data.actionLink"
        class="action"
      >
        <NavLink
          class="action-button"
          :item="actionLink"
        />
      </p>
    </header>

    <div
      v-if="data.features && data.features.length"
      class="features"
    >
      <div
        v-for="(feature, index) in data.features"
        :key="index"
        class="feature"
      >
        <h2>{{ feature.title }}</h2>
        <p>{{ feature.details }}</p>
        <div v-if="feature.link">
          <a v-bind:href="feature.link">Read more</a>
        </div>
      </div>
    </div>

    <Content class="theme-default-content custom" />

    <div
      v-if="data.footer"
      class="footer"
    >
      {{ data.footer }}
    </div>
  </main>
</template>

<script>
import NavLink from '@theme/components/NavLink.vue'

export default {
  name: 'Home',

  components: { NavLink },

  computed: {
    data () {
      return this.$page.frontmatter
    },

    actionLink () {
      return {
        link: this.data.actionLink,
        text: this.data.actionText
      }
    }
  }
}
</script>

<style lang="stylus">
.home
  padding $navbarHeight 2rem 0
  max-width $homePageWidth
  margin $navbarHeight 0px 
  display block
  background-color: $allBg
  .hero
    text-align center
    img
      min-width: 100vw
      max-height 100vh
      display block
      margin 0rem auto 0rem
    .text-on-img
      position absolute
      top 38vh
      right 1rem
      background $color4
      color $color1
      padding 0.2rem
      font-size 0.5rem
    h1
      font-size 1.8rem
    h1, .description, .action
      margin 1.8rem auto
    .description
      max-width 35rem
      font-size 1.6rem
      line-height 1.3
      color lighten($textColor, 5%)
    .action-button
      display inline-block
      font-size 1.2rem
      color #fff
      background-color $accentColor
      padding 0.8rem 1.6rem
      border-radius 4px
      transition background-color .1s ease
      box-sizing border-box
      border-bottom 1px solid darken($accentColor, 10%)
      &:hover
        background-color lighten($accentColor, 10%)
  .features
    border-top 1px solid $borderColor
    padding 0.2rem 0
    margin-top 0.5rem
    display flex
    flex-wrap wrap
    align-items flex-start
    align-content stretch
    justify-content space-between
  .feature
    flex-grow 1
    flex-basis 30%
    max-width 30%
    h2
      font-size 1.4rem
      font-weight 500
      border-bottom none
      padding-bottom 0
      color lighten($textColor, 5%)
    p
      color lighten($textColor, 5%)
  .footer
    padding 2.5rem
    border-top 1px solid $borderColor
    text-align center
    color lighten($textColor, 25%)

@media (max-width: $MQMobile)
  .home
    padding: 0rem
    max-width 100vw
    img
      max-width 100vw
      max-height 100vh
    .features
      flex-direction column
      margin: 1rem
    .feature
      max-width 100%
      padding 0 1.5rem
      p
        font-size 1rem
    .theme-default-content
      margin: 1rem
      padding: 1rem 1rem

@media (max-width: $MQMobileNarrow)
  .home
    padding-left 0rem
    padding-right 0rem
    .hero
      img
        max-height 55vh
        min-height 35vh
        max-width 100vw
        margin 0rem auto
      h1
        font-size 1.8rem
      h1, .description, .action
        margin 1.2rem auto
      .description
        font-size 1.5rem
      .action-button
        font-size 1rem
        padding 0.6rem 1.2rem
    .feature
      h2
        text-align: center
        font-size 1.45rem
      p
        padding: 0rem 1.5rem
        font-size 1.1rem

    .theme-default-content
      marging: 1rem
      padding: 1rem 1rem

@media (min-width: $MQTabletNarrowW), (max-width: MQTabletNarrowH)
  .home
    max-width: 100vw
    padding-left 0rem
    padding-right 0rem
    img
      max-width 100vw
      min-height 85vh
    
    .features
      margin: 1rem 0.2rem
    .feature
      margin: 0.5rem 0.5rem
      h2
        font-size 1.6rem
      p
        font-size 1.4rem

    .theme-default-content
      marging: 1rem
      padding: 1rem 1rem

@media (min-width: $MQTabletNarrowH), (min-height: $MQTabletNarrowW)
  .home
    margin 0px 0px
    img
      min-height: 30vh

    .features
      margin: 1rem 1.2rem
    .feature
      margin: 0.5rem 0.5rem
      padding: 0.2rem 0.2rem

    .theme-default-content
      marging: 1rem 2rem
      padding: 1rem 3.5rem

@media (min-width: $MQLaptop)
  .home
    img
      min-height: 100vh
    .features
      margin: 1rem 1.2rem
    .feature
      margin: 0.5rem 0.5rem
      padding: 0.2rem 0.2rem
      align-content: center
      h2
        font-size 2.5rem
      p
        font-size 1.5rem

    .theme-default-content
      marging: 1rem 2rem
      padding: 1rem 3.5rem
    
  footer
    p
      font-size 1.4rem
</style>
