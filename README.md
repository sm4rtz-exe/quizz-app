# quiz_app

The second Flutter app from Flutter & Dart - The Complete Guide taught by Maximilian Schwarzmüller.

## What does the app do?

This app is a simple quiz app where users can answers questions and see their results and retry if they want.

## What I learned in this project?

In this project, I learned about **Lifting State Up**, which is a technique used for collecting state of a widget in a parent class and let the another widget use the collected state.

For this quiz app project, the result page needs the users' selected answers to show their results. Therefore I created the Quiz class as the parent class for these two widgets to collect the selected answers from question page, and pass them to the result page to draw the result.
