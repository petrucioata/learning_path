module CommandHandlers
  class DeleteItem
    def call(command)
      stream = "Domain::Item$#{command.aggregate_uid}"

      aggregate = Domain::Item.new(command.aggregate_uid).load(stream)
      aggregate.delete(command.aggregate_uid)
      aggregate.store
    end
  end
end
