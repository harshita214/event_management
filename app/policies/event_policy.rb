class EventPolicy
  attr_reader :user, :event

  def initialize(user, event)
    @user = user
    @event = event
  end

  def edit?
    true
    user == event.user
  end
end
