require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene
   


    def happiness=(value)
        
        if value <= 10 && value >= 0
            @happiness = value
        elsif value >= 10
            value = 10 
            @happiness = value
        elsif value < 0
            value = 0
            @happiness = value
        end
    end

    def hygiene=(value)

        if value <= 10 && value >=0
            @hygiene = value
        elsif value >= 10
            value = 10
            @hygiene = value
        elsif
            value < 0
            value = 0
            @hygiene = value
        end
    end

    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end


    def clean?
        if @hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath()
       @hygiene += 4
       "♪ Rub-a-dub just relaxing in the tub ♫"
    end

  

    def initialize(name="some name", bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        # binding.pry
    end


end

change_amount = Person.new
change_amount.bank_account = 28
# change_amount.hygiene = 2


# binding.pry