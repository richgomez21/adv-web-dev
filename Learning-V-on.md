---
title: "Learning V-On"
author: "Richard Gomez"
description: "Learning how the V-on directive works"
---

<!-- 1. Pick any topic related to Vue that you'd like to research.
1. Do some research to learn more about the topic
1. Add a Vue component to your Vue Playground project so that you can experiment
with code related to your topic 
1. Then use this markdown file to explain the topic of your research. Introduce your topic, 
and explain how it might be useful in a real-world application.
1. Include code samples in the markdown file that demonstrate your topic, and include explanations
of how each code sample should work, and any additional information about the code sample that might be helpful
1. Make sure to rename this file so that it includes your name and the topic of your research
(ex: niall-kader-vue-props.md)
1. I have included a bunch a markdown code snippets below in case you forgot them.
1. Make sure to update the metadata at the top of this file (title, author, description)
1. Remember that you can use **ctrl+shift+v** in VS code to preview a markdown file. -->

# Learning V-On

The v-on directive in Vue.js is used to listen to DOM events and execute specific JavaScript code when those events occur. It provides a way to add event listeners to elements in your Vue application. v-on allows you to listen to events, such as clicks, mouse movements, keyboard input, etc., on HTML elements. When the specified event (like a click) occurs on the element, the associated Vue method or expression is executed. This method or expression defines what happens when the event occurs.

## Here Is A Simple Example Of The Use Of The V-On Directive
### HTML
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vue.js Counter Example</title>
  <script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
</head>
<body>

<div id="app">
  <p>Counter Value: {{ counter }}</p>
  <button v-on:click="increaseCounter">Increase Counter</button>
</div>

<script src="app.js"></script>

</body>
</html>

```
### JS
```js
new Vue({
  el: '#app',
  data: {
    counter: 0
  },
  methods: {
    increaseCounter: function() {
      // Increase the counter value when the button is clicked
      this.counter++;
    }
  }
});
```

 In this example, the v-on directive is used to attach a click event listener to an HTML button element. When the button is clicked, the increaseCounter method is executed.
 * The el option specifies that this Vue instance will be bound to the element with the id app in the HTML (el: '#app'). data is an object inside the Vue instance that contains the application's data properties. 
 * Data is an object inside the Vue instance that contains the application's data properties.
 * counter: 0 initializes a data property called counter with a value of 0. This property will be reactive, meaning changes to it will automatically update any bindings in the template.
 * Methods is an object inside the Vue instance where you can define custom methods that can be called in response to user interactions or other events.
* increaseCounter is a method that increments the counter data property by 1.
* Finally this.counter++ increments by one when the button is clicked.  

In summary, the v-on directive in Vue.js is used to attach event listeners to DOM elements. It allows you to listen for specific events, such as clicks, keypresses, or mouse movements, and execute corresponding methods or code when those events occur. By specifying the event and the associated method or expression, v-on enables interactivity in Vue.js applications, making it possible to respond to user actions and create dynamic and responsive user interfaces.
