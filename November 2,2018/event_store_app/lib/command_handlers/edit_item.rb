module CommandHandlers
  class EditItem
    def call(command)
      stream = "Domain::Item$#{command.aggregate_uid}"

      item_data = {
        name: command.name,
        description: command.description,
        uid: command.uid
      }

      aggregate = Domain::Item.new(command.aggregate_uid).load(stream)
      aggregate.edit_info(item_data)
      aggregate.store
    end
  end
end
