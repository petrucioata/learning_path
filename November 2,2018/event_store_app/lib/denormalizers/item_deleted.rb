module Denormalizers
  class ItemDeleted
    def call(event)
      item = Item.find_by(uid: event.data[:uid])
      item.destroy if item
    end
  end
end
