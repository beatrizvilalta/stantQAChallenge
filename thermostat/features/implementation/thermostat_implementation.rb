module Thermostat

    def toggle_thermostat(initial_state, temperature)
        if initial_state == "on"
            if is_above_limit(temperature)
                "off"  
            else  
                "on"
            end
        else
           if is_bellow_limit(temperature)
                "on" 
           else
                "off"
           end
        end
    end

    def is_above_limit(temperature) 
        temperature >= 23
    end

    def is_bellow_limit(temperature) 
        temperature < 5
    end
end