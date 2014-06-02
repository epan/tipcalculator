tipcalculator
=============

Initial application task for [CodePath iOS Bootcamp for Designers](http://www.peterboni.net/blog/2013/07/04/ios-formatted-currency-input/) 

## Screenshots
![Screenshot of tip calculator with calculations](http://cl.ly/image/372D3s1v0b3I/iOS%20Simulator%20-%20iPhone%20Retina%20(3.5-inch)%20%3A%20iOS%207.1%20(11D167).png "With tip calculations")

## Features
1. Input a bill amount including tax.
2. Choose a tip amount on bill amount of 15%, 18%, or 20%.
3. Input number of people in the party, default of 2 since < 2 would not need a calculater.
4. Clears inputs (bill and party) on focus.
5. Currency formatting in outputs.
6. Shows tip amount per person to support writing in credit card field use case.

## To do list
1. ~~[Make and add an app icon](http://guides.codepath.com/ios/Adding-Image-Assets).~~
2. Show a Done button instead of making people tap the canvas.
2. Show how much tip and base each person should add.
2. Use currency-based input for bill amount. [Example](http://www.peterboni.net/blog/2013/07/04/ios-formatted-currency-input/)
2. If party < 1, just input 1.
3. Remove decimal from party input keyboard.
4. If bill amount is < 10.00 then show $1, $2, $3 for tip amounts instead of percentages.
5. Prevent bill amounts like 100.43.34
6. Remove rotation on app.
7. Prevent all NaN and infinity cases.
8. Replace floats with NSDecimalNumers for precision.
9. Refactor currency formatting code.

## Ideas
1. Exclude tax or include tax in the bill amount?
2. Cash vs credit card split mode? (Cash just needs total tip + amount per person, credit card needs separated individual tip + amount per person to write in.)
3. Integrate with P2P payment service?
4. Persistent keyboard for numbers?
5. Calculate on each input after a slight delay?
6. Add animations and transitions
