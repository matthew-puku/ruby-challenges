# Ruby Intro Answer Sheet

## Check your ruby version
Your ruby version: 2.3.7

## Floats and integers 
1. 3.0 / 2
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 1.5
2. 3 / 2.0
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 1.5
3. 4 ** 2.0
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 16.0
4. 4.1 % 2
    1. Expected (integer or float): float
    2. Actual (integer or float): float
    3. Answer: 0.09999999999999964

## Strings
1. "tom" * 3
    * Expected: "tomtomtom"
    * Actual: "tomtomtom"
2. "tom" + "tom"
    * Expected: "tomtom"
    * Actual: "tomtom"
3. "tom" + 1
    * Expected: error
    * Actual: TypeError
4. "tom" / 2
    * Expected: TypeError
    * Actual: NoMethodError

## Calculations in IRB
1. How many hours are in a year?
    * Answer: 24 * 365
2. How many minutes are in a decade?
    * Answer: 60 * 24 * 365.25 * 10
3. How many seconds old are you?
    * Answer:
    require 'time'
    dob = Time.parse("1992-08-19")
    seconds_old = (Time.now.to_i - dob.to_i)
    puts seconds_old