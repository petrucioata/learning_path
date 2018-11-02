module Denormalizers
  class ItemEdited
    def call(event)
      item = Item.find_by(uid: event.data[:uid])
      item.update!(event.data) if item
    end
  end
end
