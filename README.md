# react-challenge
This is my attempt to learn React in 4 days.

# Why React?
I chose React for two main reasons. First was because I wanted more practice with Javascript and front-end development. The second reason was because I wanted to be able to call myself a full-stack devleoper; I already felt comfortable with Rails on the back-end and wanted something to complete my programmer profile. React seemed like a great fit.

# My React App
I made three apps. All three apps present a way to visualize all of the kanji (Chinese characters used in Japanese) that you have learned through a color-coding system. Everything is done in React.

The first app, kanji_react, starts with all 2200 kanji inside of the far left "Haven't studied" div. When you click on a kanji it will move it one div to the right. The progression is from "Don't know well" (red) to "Know extremely well" (blue). As Japanese learners learn a kanji they can move it to a div and visually see the progress they're making.

The second app, kanji_hover, is a giant list of all the 2200 kanji. When you hover your mouse over a button it will change color.

The third app, kanji_connect, is a giant list of all the 2200 kanji. When you click on a kanji it will change color. However, this app also will save data (unlike the other two). For the model and controller I connected React to Rails. On a third project I was able to connect Rails with React and have the objects changed by React be saved to the database.

# About the Program
If you look at the code you will see that I chose to use the JSX syntatic sugar that React is able to employ so that my code looks familiar to HTML. React has a very vertical structure; data is passed down from the top objects to the objects below through properties ("props"). Each React component ("object" in Ruby terms) can also store "state". For my kanji_react app I had a top level object called KanjiSheet that contained each of the 5 study level's React objects as well. Each of these levels was passed an array (through "props") of kanji. The respective level object would then turn that array of strings into an array of React components called "Kanji" (basically buttons), apply styling, and print them to the screen.

The second app, kanji_hover, had a function for onMouseOver defined that would change the property of a given kanji button when moused over. This new property changes the color of the button.

The third app, kanji_connect, has an onClick function instead of an onMouseOver function to change the color of the kanji. However, it also calls an ajax put request to save the state of the kanji.