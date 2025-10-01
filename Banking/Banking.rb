class Banking 

    def initialize
        @balance = 100
    end

    def get_balance
        @balance.to_f
    end

    def deposit(amount)
        @balance += amount.to_f
    end 

    def withdraw(amount)
        @balance -= amount.to_f
    end
end

