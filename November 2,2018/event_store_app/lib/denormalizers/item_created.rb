module Denormalizers
  class ItemCreated
    def call(event)
      ::Item.create!(event.data)
    end
  end
end
