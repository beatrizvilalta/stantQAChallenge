module Period_of_life

    def show_period_of_life(age)
        if (is_input_valid(age)) 
            calculate_period_of_life(age)
        else 
            "WRONG TYPE, ENTER A NUMBER"
        end
    end

    def is_input_valid(age)
        age.is_a? Integer
    end

    def calculate_period_of_life(age)
        if (age > 0 && age < 16) 
            "CHILD"
        elsif (age >= 16 && age < 60)   
            "ADULT"
        elsif (age >= 60)
            "ELDERLY" 
        elsif (age <= 0)
            "INVALID AGE"   
        end
    end
end