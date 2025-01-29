# typed: strong

module ModernTreasury
  module Models
    class LedgerableEvent < ModernTreasury::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          created_at: Time,
          custom_data: T.nilable(T.anything),
          description: T.nilable(String),
          ledger_event_handler_id: String,
          live_mode: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, String]),
          name: String,
          object: String,
          updated_at: Time
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :custom_data

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(String) }
      attr_accessor :ledger_event_handler_id

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :object

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          custom_data: T.nilable(T.anything),
          description: T.nilable(String),
          ledger_event_handler_id: String,
          live_mode: T::Boolean,
          metadata: T.nilable(T::Hash[Symbol, String]),
          name: String,
          object: String,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        created_at:,
        custom_data:,
        description:,
        ledger_event_handler_id:,
        live_mode:,
        metadata:,
        name:,
        object:,
        updated_at:
      ); end

      sig { returns(ModernTreasury::Models::LedgerableEvent::Shape) }
      def to_h; end
    end
  end
end
