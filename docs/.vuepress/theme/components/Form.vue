<template>
  <form
    action="https://formspree.io/moqnlyjq"
    method="POST"
  >
    <label class="form-name">
      <input type="text" name="name" placeholder="Name *" autocomplete="off" required="required">
    </label>
    <label class="form-email">
      <input type="text" name="_replyto" placeholder="E-mail *" autocomplete="off" required="required">
    </label>
    <label class="form-subject">
      <input type="text" name="subject" placeholder="subject" autocomplete="off"
                                                                required="required">
    </label>
    <label class="form-text">
      <textarea name="message" type="text" placeholder="...your message! (:"
        autocomplete="off" required="required"></textarea>
    </label>

    <!-- your other form fields go here -->

    <button type="submit" class="form-button">Send</button>
  </form>
</template>

<style lang="stylus">
form
  max-width 80vw
  margin 1rem
  padding 1rem
  display grid
  justify-items center
  label
    justify-self center
    input
      background-color $color5
      margin 0.3rem
      padding 0.8rem 2rem
      border-sizing border-box
      border-radius 0.7rem 0.7rem 0rem 0.7rem
    textarea
      margin 0.3rem
      padding 0.8rem 1rem
      width 70vw
      height 20vh
      border-sizing border-box
      border-radius 1rem 1rem 0rem 1rem
      background-color $color5
  button
    width 20vw
    height auto
    border-sizing border-box
    background-color $color3
    color $color1

@media (min-width: $MQTabletNarrowW), (min-height: $MQTabletNarrowH)
  form
    padding 0.1rem
    grid-template-columns: 50% 50%
    grid-template-rows: 10% 10% 10%
    .form-name
      grid-area 1 / 1 / 2 / 2
    .form-email
      grid-area 1 / 2 / 2 / 3
    .form-subject
      grid-area 2 / 1 / 3 / 3
    .form-text
      grid-area 3 / 1 / 4 / 4
    .form-button
      grid-area 4 / 2 / 5 / 4
      border-radius 2rem 0rem 0rem 2rem
      font-size 1.5rem
      padding-top 0.5rem
      text-align center
</style>
