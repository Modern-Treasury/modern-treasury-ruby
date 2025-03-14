# typed: strong

module ModernTreasury
  module Models
    class LedgerableEvent < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Additionally data to be used by the Ledger Event Handler.
      sig { returns(T.nilable(T.anything)) }
      def custom_data
      end

      sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
      def custom_data=(_)
      end

      # Description of the ledgerable event.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # Id of the ledger event handler that is used to create a ledger transaction.
      sig { returns(String) }
      def ledger_event_handler_id
      end

      sig { params(_: String).returns(String) }
      def ledger_event_handler_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata=(_)
      end

      # Name of the ledgerable event.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
