class Person
  # getters
  attr_reader :name, :bank_account, :happiness, :hygiene, :happy, :clean
  # setters
  attr_writer :bank_account, :happiness, :hygiene 

  # cunstructor method
  def initialize(name) 
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  ## setter methods
  def happiness=(new_happiness)

    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else 
     @happiness = new_happiness
    end
    
  end

  def hygiene=(new_hygiene)

    if  new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    else 
     @hygiene = new_hygiene
    end
    
  end

  #getter methods
  def happy?
    if @happiness > 7
      @happy = true
    else
      @happy = false
    end
  end

  def clean?
    if @hygiene > 7
      @clean = true
    else
      @clean = false
    end
  end

  def get_paid(amount)
   @bank_account = @bank_account + amount
   'all about the benjamins'
  end

  def take_bath
    @hygiene = @hygiene + 4

    if @hygiene > 10
      self.hygiene = @hygiene
    end
    
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    @hygiene = @hygiene - 3
    @happiness = @happiness + 2

    if @hygiene < 0
      self.hygiene = @hygiene
    end

    if @happiness > 10
      self.happiness = @happiness
    end

    '♪ another one bites the dust ♫'
  end

  def call_friend(person)
    @happiness = @happiness + 3

    if @happiness > 10
      self.happiness = @happiness
    end

    person.happiness = person.happiness + 3

    if person.happiness > 10
      person.happiness = person.happiness
    end

    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)


    if topic == 'politics' 
      self.happiness = @happiness - 2
      person.happiness = person.happiness - 2

      return 'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1

      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end


end

  



