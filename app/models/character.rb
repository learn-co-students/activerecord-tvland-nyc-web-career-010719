class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    urkel = Character.find_by(name: "Steve Urkel")
    "Steve Urkel always says: #{urkel.catchphrase}"
  end

end
