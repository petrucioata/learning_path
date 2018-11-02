module Events
  ItemCreated = Class.new(RailsEventStore::Event)
  ItemEdited = Class.new(RailsEventStore::Event)
  ItemDeleted = Class.new(RailsEventStore::Event)
  UserCreated = Class.new(RailsEventStore::Event)
end
