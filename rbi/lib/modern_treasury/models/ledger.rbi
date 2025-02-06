# typed: strong

module ModernTreasury
  module Models
    class Ledger < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(T::Hash[Symbol, String]) }
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
          description: T.nilable(String),
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          metadata: T::Hash[Symbol, String],
          name: String,
          object: String,
          updated_at: Time
        ).void
      end
      def initialize(
        id:,
        created_at:,
        description:,
        discarded_at:,
        live_mode:,
        metadata:,
        name:,
        object:,
        updated_at:
      )
      end

      sig do
        override.returns(
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
      def to_hash; end
    end
  end
end
