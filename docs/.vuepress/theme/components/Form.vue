<template>
  <form
    action="https://formspree.io/moqnlyjq"
    method="POST"
  >
    <div class="form-input-wrapper">
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

    </div>
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
  display grid
  grid-template-columns 1fr
  .form-input-wrapper
    display grid
    align-items center
    grid-template-columns repeat(auto-fit, minmax(240px, 1fr))
    label
      justify-self center
      input
        background-color $color5
        margin 0.3rem
        padding 0.8rem 1rem
        border-sizing border-box
        border-radius 0.3rem
        -moz-box-shadow:    3px 3px 5px 6px #ccc;
        -webkit-box-shadow: 3px 3px 5px 6px #ccc;
        box-shadow:         3px 3px 5px 6px #ccc;
        &:focus
          background-color $color1
  .form-text
    justify-self center
    margin 1rem 0rem

    min-width 60vw
    max-width 98vw
    min-height 30vh

    textarea
      -moz-box-sizing: border-box;
      border-sizing border-box
      border-radius 0.3rem
      -moz-box-shadow:    3px 3px 5px 6px #ccc;
      -webkit-box-shadow: 3px 3px 5px 6px #ccc;
      box-shadow:         3px 3px 5px 6px #ccc;
      min-width 60vw
      max-width 98vw
      min-height 30vh
      background-color $color5
      &:focus
        background-color $color1

  button
    background-color $color3
    color $color1
    justify-self center
    border-sizing border-box
    border-radius 3rem
    min-height 3rem
    -moz-box-shadow:    3px 3px 1px 1px #ccc;
    -webkit-box-shadow: 3px 3px 1px 1px #ccc;
    box-shadow:         3px 3px 1px 1px #ccc;

    &:hover
      background-color $color4
      color $color5

</style>
