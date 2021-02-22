<template>
  <footer>
    <SocialIcons />
    <p>
    +45 5280 3639 <br>
    info@eliasrod.com <br>
    Some rights reserved.  2010-2020.
    </p>
  </footer>
</template>

<script>
import SocialIcons from '@theme/components/SocialIcons.vue'

export default {
  name: 'Footer',

  components: {
    SocialIcons
  }
}
</script>
<style lang="stylus">
footer
  text-align center
  border-top 1px solid $borderColor
  margin 1rem
  padding 2rem

  font-weight 300
  font-size 1rem
</style>
