# typed: strong

module ModernTreasury
  module Models
    class LedgerableEvent < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # Additionally data to be used by the Ledger Event Handler.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :custom_data

      # Description of the ledgerable event.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Id of the ledger event handler that is used to create a ledger transaction.
      sig { returns(String) }
      attr_accessor :ledger_event_handler_id

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Name of the ledgerable event.
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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      )
      end

      sig do
        override
          .returns(
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
          )
      end
      def to_hash
      end
    end
  end
end
