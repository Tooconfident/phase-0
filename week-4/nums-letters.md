## What does puts do?

#### puts writes on the screen what comes after it without actually evaluating the code. It prints the output with a new line.

## What is an integer? What is a float?

#### An *integer* is any number without decimal points and if you include decimal points you will have a *float*.

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

#### So since integers have no decimal point and floats do, the same goes for their corresponding styles of division. For instance if you "puts 9 / 2" in ruby, you will get "4" back instead a calculator's answer of "4.5". This is actually not necessarily the wrong answer but you can interpret the asnwer as being what would happen if you went grocery shopping for apples, you have $9 and the apples are $2 each. Since you cannot buy half an apple you would only be able to purchase 4 apples. That is a word problem example of integer division. Float division is more towards what a calculator will do. If you "puts 9.0 / 2.0" you will get back "4.5". You must make sure to add your decimal points, otherwise ruby will consider you automatically using integers! 


*Hours in a year*

```Ruby
puts 365 * 24
```

*Minutes in a decade*

```Ruby
puts (24*60) * (365*10) 
```

[4.2.1](https://github.com/Tooconfident/phase-0/blob/master/week-4/defining-variables.rb/ "4.2.1")

[4.2.2](https://github.com/Tooconfident/phase-0/blob/master/week-4/simple-string.rb/ "4.2.2")

[4.2.3](https://github.com/Tooconfident/phase-0/blob/master/week-4/basic-math.rb/ "4.2.3")

## How does Ruby handle addition, subtraction, multiplication, and division of numbers?
#### Very simliar to a calculator. You use (1+2) for addition, - for subtraction, / for division and * for multiplication.

##What is the difference between integers and floats?
#### Integers are whole numbers with no decimal point. Floats include the decimal point.

#What is the difference between integer and float division?
#### So since integers have no decimal point and floats do, the same goes for their corresponding styles of division. For instance if you "puts 9 / 2" in ruby, you will get "4" back instead a calculator's answer of "4.5". This is integer division. Once you include the decimal points, this is float division and more like what a traditional calculator will do.

##What are strings? Why and when would you use them?
#### Strings are a group of letters, words or text found within quotation marks and are just a set of characters, usually contructing a sentence of the human language. You would use them when you want your program to print out a question or response to user inputs with a sentence instead of a number. They are also useful when you want you give a variable a string value instead of a number.

##What are local variables? Why and when would you use them?
####A local variable begins with a owr case letter or _ and are used to hold data to be used in a ruby program. You assign this data by giving the variable a name and a value (variable_name = value). One you assign the value of the variable, you can call on the name throughout you program.

##How was this challenge? Did you get a good review of some of the basics?
#### Absolutely. This challenge helped dust the rust off from what we learned before our interview process. 