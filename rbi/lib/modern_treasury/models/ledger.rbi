# typed: strong

module ModernTreasury
  module Models
    class Ledger < ModernTreasury::BaseModel
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

      # An optional free-form description for internal use.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
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
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # The name of the ledger.
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
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          object: String,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, description:, discarded_at:, live_mode:, metadata:, name:, object:, updated_at:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              description: T.nilable(String),
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              metadata: T::Hash[Symbol, String],
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
