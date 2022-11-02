class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def actor
    Actor.find(self.actor_id)
    # .characters.actor
  end
  def say_that_thing_you_say
  "#{self.name} always says: #{self.catchphrase}"
    end
end
