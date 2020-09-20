class Calculator
    attr_accessor :age, :deposit_value

    def is_age_valid
        age >=18 
    end

    def is_deposit_valid
        deposit_value >= 100 && deposit_value <= 10000
    end

    def show_error_message
        if !is_age_valid
            "Age not valid" 
        elsif !is_deposit_valid
            "Deposit not valid" 
        end
    end

    def check_deposit_rate
        if is_age_valid || is_deposit_valid
            if age >= 60
                2.0
            else
                calculate_rate
            end
        else
            show_error_message
        end
    end

    def calculate_rate
        if ((deposit_value >=100) && (deposit_value <= 999))
            1.0
        elsif ((deposit_value >= 1000) && (deposit_value <= 4999))
            1.3
        elsif ((deposit_value >= 5000) && (deposit_value <= 10000))
            1.5   
        end
    end
end