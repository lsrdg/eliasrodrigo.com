<template>
  <form
    action="https://formspree.io/moqnlyjq"
    method="POST"
  >
    <label>
      <input type="text" name="name" placeholder="Name *" autocomplete="off" required="required">
    </label>
    <label>
      <input type="text" name="_replyto" placeholder="E-mail *" autocomplete="off" required="required">
    </label>
    <label>
      <input type="text" name="subject" placeholder="subject" autocomplete="off"
                                                                required="required">
    </label>
    <label>
      <textarea name="message" type="text" placeholder="...your message! (:"
        autocomplete="off" required="required"></textarea>
    </label>

    <!-- your other form fields go here -->

    <button type="submit">Send</button>
  </form>
</template>

<style lang="stylus">
form
  max-width 80vw
  margin 1rem
  padding 1rem
  display flex
  flex-direction column
  justify-content center
  label
    align-self center
    input
      margin 0.3rem
      padding 0.8rem 2rem
      border-radius 0.7rem 0.7rem 0rem 0.7rem
    textarea
      margin 0.3rem
      padding 1rem auto
      width 80vw
      height 20vh
      border-radius 1rem 1rem 0rem 1rem
</style>
