module Domain
  class User
    include AggregateRoot

    attr_reader :uid, :name, :age
    include Commands::Execute

    def initialize(id)
      @uid = id
    end

    def create(data)
      apply Events::UserCreated.new(data: data)
    end

    private

    def apply_user_created(event)
      @uid = event.data[:uid]
      @name = event.data[:name]
      @age = event.data[:age]
    end
  end
end
