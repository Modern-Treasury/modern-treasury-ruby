# typed: strong

module ModernTreasury
  module Models
    class InternalAccountUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :parent_account_id

      sig { params(parent_account_id: String).void }
      attr_writer :parent_account_id

      sig do
        params(
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        counterparty_id: nil,
        ledger_account_id: nil,
        metadata: nil,
        name: nil,
        parent_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
