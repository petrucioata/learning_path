module Commands
  class CreateUser < Base
    attr_accessor :name, :age, :uid

    def aggregate_uid
      uid
    end
  end
end
