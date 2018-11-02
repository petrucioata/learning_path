module Domain
  class Item
    include AggregateRoot

    attr_reader :uid, :name, :description, :deleted
    include Commands::Execute

    def initialize(id)
      @uid = id
    end

    def create(data)
      apply Events::ItemCreated.new(data: data)
    end

    def delete(uid)
      apply Events::ItemDeleted.new(data: { uid: uid })
    end

    def edit_info(data)
      apply Events::ItemEdited.new(data: data)
    end

    private

    def apply_item_created(event)
      @uid = event.data[:uid]
      @name = event.data[:name]
      @description = event.data[:description]
    end

    def apply_item_edited(event)
      @name = event.data[:namne]
      @description = event.data[:description]
    end

    def apply_item_deleted(event)
      @deleted = true
    end
  end
end
