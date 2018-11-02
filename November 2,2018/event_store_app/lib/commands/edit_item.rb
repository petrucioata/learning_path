module Commands
  class EditItem < Base
    attr_accessor :uid, :name, :description

    def aggregate_uid
      uid
    end
  end
end
