Feature: Create thermosthat controler
    As a user,
    I want a thermosthat controler,
    so that it can turn itself on and off acording to the temperature.


Scenario: Turn on the thermosthat
    Given the thermosthat is off
    When the mesured temperature is less than 5°C
    Then the thermosthat should turn on 

Scenario: Turn off the thermosthat
    Given the thermosthat is on
    When the mesured temperature is greater than or equal 23°C
    Then the thermosthat should turn off

