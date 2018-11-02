module CommandHandlers
  class CreateUser
    def call(command)
      stream = "Domain::User$#{command.uid}"
      user_data = {
        uid: command.uid,
        name: command.name,
        age: command.age,
      }

      aggregate = Domain::User.new(command.uid).load(stream)
      aggregate.create(user_data)
      aggregate.store
    end
  end
end
