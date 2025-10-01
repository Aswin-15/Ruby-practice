require_relative 'Banking'

class Bank_flow

    def initialize
        @banking = Banking.new
    end

    def ui
        puts "1.check balance\n2.deposit\n3.withdraw\n4.exit"
    end

    def check_amount

        while true
            print "Enter the amount to deposit/withdraw : "
            amount = gets.chomp.to_f
            if(amount % 100 != 0)
                puts "Invalid amount...!"

            else
                return amount 
            end

        end
        
        return amount
    end


    def work_flow

        while true
            ui
            print "Enter your choice : "
            choice = gets.chomp.to_i

            case choice
            when 1
                print "Getting Data"

                3.times do |i|
                    print "."
                    sleep(0.5)
                end
                puts "\nYour current Balance is #{@banking.get_balance}"
            
            when 2
                amount = check_amount
                @banking.deposit(amount)
                puts "#{amount} was deposited successfully..!"
            when 3
                amount = check_amount

                if(amount > @banking.get_balance)
                    puts "In sufficient balance..!"
                else
                    @banking.withdraw(amount)
                    puts "#{amount} was withdraw successfully..!"
                end

            when 4
                 print "Exiting"

                3.times do |i|
                    print "."
                    sleep(0.5)
                end
                break
            
            else 
                puts "Invalid choice"
            end 
        end
    end

    

end

flow = Bank_flow.new 
flow.work_flow