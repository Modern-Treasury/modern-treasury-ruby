# typed: strong

module ModernTreasury
  module Resources
    class Events
      # get event
      sig { params(id: String, request_options: ModernTreasury::RequestOpts).returns(ModernTreasury::Models::Event) }
      def retrieve(
        # event id
        id,
        request_options: {}
      ); end
      # list events
      sig do
        params(
          after_cursor: T.nilable(String),
          entity_id: String,
          event_name: String,
          event_time_end: Time,
          event_time_start: Time,
          per_page: Integer,
          resource: String,
          request_options: ModernTreasury::RequestOpts
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::Event])
      end
      def list(
        after_cursor: nil,
        entity_id: nil,
        event_name: nil,
        # An inclusive upper bound for when the event occurred
        event_time_end: nil,
        # An inclusive lower bound for when the event occurred
        event_time_start: nil,
        per_page: nil,
        resource: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
