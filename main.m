\
\ Copyright © 2024 User all rights reserved.
\
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ @author: Pratama123
\ @date: 30 Nov 2024
\
\ 30 Nov 2024 - Initial Version by User
\

smojo/chat
smojo/chat/app
smojo/chat/log
smojo/chat/test

\ ============= UI 
include ./topics/ui/ui-ux.m

\ ============= MENU 
include ./topics/menu/menu-main.m
include ./topics/menu/menu-swift-intro.m
include ./topics/menu/menu-swift-programming.m

\ ============= SWIFT TUTORIALS
include ./topics/swift/types.m
include ./topics/swift/basics.m
include ./topics/swift/control-flow.m
include ./topics/swift/functions.m
include ./topics/swift/closures.m
include ./topics/swift/classes-and-structs.m

\ ============= ADVANCED SWIFT
include ./topics/swift/protocols.m
include ./topics/swift/extensions.m
include ./topics/swift/async-await.m
include ./topics/swift/error-handling.m

\ ============= QUIZ AND TESTS
include ./topics/quiz/quiz-helper.m
include ./topics/quiz/quiz-questions.m
include ./topics/quiz/quiz-swift-basics.m
include ./topics/quiz/quiz-advanced.m

\ ============= UTILITIES
include ./topics/utilities/unhandled.m

: publish 
  \ IMPORTANT - edit this part. It's the name of your bot.
  publish: SwiftBot
  
  \ What your bot says at first. 
  init: ${ welcome }
  
  \ ------ PROPERTIES OF THE CHATBOT USER INTERFACE --------
  
  \ The background image. Should be tileable/repeatable. 
  \ Or you can use a HTML color (see https://www.w3schools.com/colors/colors_picker.asp)
  background: https://st4.depositphotos.com/15640006/27539/v/450/depositphotos_275390612-stock-illustration-modern-abstract-digital-technology-background.jpg
  \ Image of the avatar to use. 
  avatar: https://upload.wikimedia.org/wikipedia/commons/a/af/Apple_logo_black.svg
  \ Optional border on avatar
  avatar-border: none
  
  \ Google font to import.
  import-font: Inter:wght@300
  \ Font to use in bubbles
  bubble-font: 'Inter', sans-serif
  \ Font Color & Background of bot bubble
  bubble-bot-color: white
  bubble-bot-background: #007AFF
  \ Font Color & Background for user bubble
  bubble-user-color: black
  bubble-user-background: #E5E5EA
  \ Other bubble properties
  bubble-radius: 16
  bubble-font-size: 16
  \ Max Width of bot bubble, in pixels
  bot-bubble-width: 400
  \ Limit the number of responses displayed
  limit: 1
  
  \ Optional properties of the "send" button.
  send-button-image-url: https://upload.wikimedia.org/wikipedia/commons/5/55/Apple_logo_white.svg
  send-button-image-style: width: 30px; height: 30px;
  
  \ ----- PROPERTIES OF THE URL LINK FOR SOCIAL MEDIA --------
  \ These will be visible when you share the link to your bot.
  title: SwiftBot
  description: Learn Swift and master Apple ecosystem programming with SwiftBot.
  thumbnail: https://upload.wikimedia.org/wikipedia/commons/a/af/Apple_logo_black.svg
  
;