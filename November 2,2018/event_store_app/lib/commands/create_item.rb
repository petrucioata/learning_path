module Commands
  class CreateItem < Base
    attr_accessor :name, :description, :uid

    def aggregate_uid
      uid
    end
  end
end
