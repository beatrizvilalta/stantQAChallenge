World Thermostat

Given('the thermostat is {string}') do |initial_state|
    @initial_state = initial_state
end
  
When('the mesured temperature is {int}') do |temperature|
    @temperature = temperature
    @actual = toggle_thermostat(@initial_state, @temperature)
end
  
Then('the thermostat should turn {string}') do |expected|
    expect(@actual).to eq(expected)
end