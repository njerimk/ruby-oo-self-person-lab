# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    @@min_limit= 0
    @@max_limit= 10

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    #binding.pry
    def happiness=(happiness)
        @happiness = happiness.clamp(@@min_limit, @@max_limit)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(@@min_limit, @@max_limit)
    end

    def happy?
        #binding.pry
       self.happiness > 7 
    end
    
    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
       if topic == "politics" 
            self.happiness -= 2 
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
       elsif topic == "weather" 
            self.happiness += 1 
            person.happiness += 1
            'blah blah sun blah rain' 
       else
        "blah blah blah blah blah"
       end
     end

end

