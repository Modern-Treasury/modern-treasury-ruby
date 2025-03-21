# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # The ledger account that you'd like to link to the virtual account.
      sig { returns(T.nilable(String)) }
      def ledger_account_id
      end

      sig { params(_: String).returns(String) }
      def ledger_account_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig do
        params(
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(counterparty_id: nil, ledger_account_id: nil, metadata: nil, name: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              counterparty_id: String,
              ledger_account_id: String,
              metadata: T::Hash[Symbol, String],
              name: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
