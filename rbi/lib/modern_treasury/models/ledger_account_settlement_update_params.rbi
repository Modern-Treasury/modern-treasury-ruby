# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountSettlementUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The description of the ledger account settlement.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      #   ledger transaction, use `archived`.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(description: nil, metadata: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              description: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              status: Symbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # To post a pending ledger account settlement, use `posted`. To archive a pending
      #   ledger transaction, use `archived`.
      class Status < ModernTreasury::Enum
        abstract!

        POSTED = :posted
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
