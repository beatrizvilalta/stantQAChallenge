require_relative "implementation"

Given('the customer age is {int}') do |age|   
  @calculator = Calculator.new()
  @calculator.age = age
end

When('the customer enters his age on the system') do
  @actual = @calculator.is_age_valid
end

Then('the system should return false') do
  expect(@actual).to be(false)
end

Then('the system should return true') do
  expect(@actual).to be(true)
end

Given('the costumer entered an {int}') do |age|
   @calculator = Calculator.new()
   @calculator.age = age 
end
    
Given('the costumer entered a {float}') do |deposit_value|
    @calculator.deposit_value = deposit_value
end
    
When('the age or the deposit value are not valid') do
    @actual = @calculator.show_error_message
end
    
Then('return {string} message') do |expected|
    expect(@actual).to eq(expected)
end

Given('the customer entered a {int}') do |deposit_value|
  validAge = 20
  @calculator = Calculator.new()
  @calculator.age = validAge
  @calculator.deposit_value = deposit_value
end

When('the system checks if the costumer is allowed to make a deposit') do 
    @actual = @calculator.is_deposit_valid
end

Given('the customer age is greater or equal to {int}') do |age|
  @calculator = Calculator.new()
  @calculator.age = age
end

Given('his deposit value is valid') do
  valid_deposit = 500
  @calculator.deposit_value = valid_deposit
end

When('the system checks his rate') do
  @rate_result = @calculator.check_deposit_rate
end

Then('the system should return {float}% as interest rate') do |expected|
  expect(@rate_result).to eq(expected)
end

Given('the customer entered a valid deposit value') do
  validAge = 20
  @calculator = Calculator.new()
  @calculator.age = validAge
end

When('the {int} is rated') do |deposit_value|
  @calculator.deposit_value = deposit_value
  @rate_result = @calculator.check_deposit_rate
end
