# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def initialize(name, bank_account = 25, hygiene = 8, happiness = 8)
    @name = name
    @bank_account = bank_account
    @hygiene = hygiene
    @happiness = happiness
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else @hygiene = hygiene
    end
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else @happiness = happiness
    end
  end

# The clean? and happy? methods are pretty similiar: they should return true if the happiness or hygiene points exceed seven. Otherwise they should return false.

  def happy?
    if @happiness > 7
      true
    else false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else false
    end
  end

#   The get_paid method should accept a salary amount and add this to the person's bank account. Then the method should return the string "all about the benjamins".

  def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
  end
#
# The take_bath method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


#
# The work_out method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
#
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end
#
# The call_friend method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"

  def call_friend(friend)
    friend.happiness +=3
    self.happiness +=3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
# Finally, the start_conversation method should accept two arguments, the person to start a conversation with and the topic of conversation.
#
# If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
# If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
# If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
  def start_conversation(friend, topic)
    case
     when topic == "politics"
      friend.happiness -=2
      self.happiness -=2
      return "blah blah partisan blah lobbyist"
    when topic == "weather"
      friend.happiness +=1
      self.happiness +=1
      return "blah blah sun blah rain"
    else return "blah blah blah blah blah"
    end
  end
end
