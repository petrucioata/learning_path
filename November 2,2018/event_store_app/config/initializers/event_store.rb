Rails.application.config.event_store.tap do |es|
  es.subscribe(Denormalizers::ItemCreated, [Events::ItemCreated])
  es.subscribe(Denormalizers::ItemEdited, [Events::ItemEdited])
  es.subscribe(Denormalizers::ItemDeleted, [Events::ItemDeleted])
  es.subscribe(Denormalizers::UserCreated, [Events::UserCreated])
  es.subscribe(Rails.application.config.stuff_created, [
    Events::ItemCreated,
    Events::UserCreated
  ])
end
