class StuffCreated
  def call(event)
    begin
      event_store.link_to_stream(event.event_id,
                                 stream_name: "stuff_created",
                                 expected_version: :auto)
    rescue RubyEventStore::EventDuplicatedInStream
      Rails.logger.error("Event already present in dashboard stream: #{event.inspect}")
    end
  end

  private

  def event_store
    Rails.application.config.event_store
  end
end