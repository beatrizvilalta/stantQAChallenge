
World Period_of_life

Given('the user entered the valid age {int}') do |valid_age|
    @age = valid_age
end
  
When('the age is used as a parameter') do
    @actual = show_period_of_life(@age)
end
  
Then('the function should return {string} as result') do |expected|
    expect(@actual).to eq(expected)
end
  
Given('the user entered an invalid age equal to {int}') do |invalid_age|
    @age = invalid_age
end

Then('the function should return an invalid age message {string}') do |expected|
    expect(@actual).to eq(expected)
end

Given('the user entered an invalid age equal to {string}') do |wrong_type|
    @age = wrong_type
end

Then('the function should return an invalid input message {string}') do |expected|
    expect(@actual).to eq(expected)
end