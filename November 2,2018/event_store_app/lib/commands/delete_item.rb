module Commands
  class DeleteItem < Base
    attr_accessor :uid

    def aggregate_uid
      uid
    end
  end
end