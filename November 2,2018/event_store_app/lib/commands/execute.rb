module Commands
  module Execute
    def execute(command)
      command.validate!
      handler_for(command).call(command)
    end

    private
    def handler_for(command)
      {
        Commands::CreateItem => CommandHandlers::CreateItem.new,
        Commands::EditItem => CommandHandlers::EditItem.new,
        Commands::DeleteItem => CommandHandlers::DeleteItem.new,
        Commands::CreateUser => CommandHandlers::CreateUser.new,
      }.fetch(command.class)
    end
  end
end
