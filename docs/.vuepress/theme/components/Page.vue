<template>
  <main class="page">
    <slot name="top" />

    <Content class="theme-default-content" />
    <PageEdit />

    <PageNav v-bind="{ sidebarItems }" />

    <slot name="bottom" />
     
    <Shows v-if="$page.frontmatter.shows" />
    <Teaching v-if="$page.frontmatter.teaching" />
    <Form v-if="$page.frontmatter.form" />
  </main>
</template>

<script>
import PageEdit from '@theme/components/PageEdit.vue'
import PageNav from '@theme/components/PageNav.vue'
import Teaching from '@theme/components/Teaching.vue'
import Shows from '@theme/components/Shows.vue'
import Form from '@theme/components/Form.vue'

export default {
  components: {
    PageEdit,
    PageNav,
    Shows,
    Teaching,
    Form
  },

  props: ['sidebarItems']
   
}
</script>

<style lang="stylus">
@require '../styles/wrapper.styl'

.page
  padding-bottom 0rem
  display block
</style>
