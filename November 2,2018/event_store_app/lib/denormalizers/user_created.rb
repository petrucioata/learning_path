module Denormalizers
  class UserCreated
    def call(event)
      ::User.create!(event.data)
    end
  end
end
