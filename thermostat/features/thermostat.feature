@thermostat
Feature: Create thermostat controler
    As a user,
    I want a thermostat controler,
    so that it can turn itself on and off acording to the temperature.

Scenario Outline: Toggle the thermostat
    Given the thermostat is "<initial_thermostat>"
    When the mesured temperature is <temperature>
    Then the thermostat should turn "<final_thermostat>"

Examples:
    | initial_thermostat | temperature | final_thermostat |
    |      on            |     10      |       on         |
    |      on            |     23      |       off        |
    |      on            |     25      |       off        |
    |      off           |      4      |       on         |
    |      off           |      5      |       off        |
    |      on            |      5      |       on         |

 