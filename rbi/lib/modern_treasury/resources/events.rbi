# typed: strong

module ModernTreasury
  module Resources
    class Events
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Event)
      end
      def retrieve(id, request_options: {}); end

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
        ).returns(ModernTreasury::Page[ModernTreasury::Models::Event])
      end
      def list(
        after_cursor:,
        entity_id:,
        event_name:,
        event_time_end:,
        event_time_start:,
        per_page:,
        resource:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
