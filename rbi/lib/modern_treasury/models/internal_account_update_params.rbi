# typed: strong

module ModernTreasury
  module Models
    class InternalAccountUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # The Ledger Account associated to this account.
      sig { returns(T.nilable(String)) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # The nickname for the internal account.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The parent internal account for this account.
      sig { returns(T.nilable(String)) }
      def parent_account_id
      end

      sig { params(_: String).returns(String) }
      def parent_account_id=(_)
      end

      sig do
        params(
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        counterparty_id: nil,
        ledger_account_id: nil,
        metadata: nil,
        name: nil,
        parent_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              counterparty_id: String,
              ledger_account_id: String,
              metadata: T::Hash[Symbol, String],
              name: String,
              parent_account_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
