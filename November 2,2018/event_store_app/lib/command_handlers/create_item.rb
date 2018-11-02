module CommandHandlers
  class CreateItem
    def call(command)
      stream = "Domain::Item$#{command.uid}"
      item_data = {
        uid: command.uid,
        name: command.name,
        description: command.description,
      }

      aggregate = Domain::Item.new(command.uid).load(stream)
      aggregate.create(item_data)
      aggregate.store
    end
  end
end
