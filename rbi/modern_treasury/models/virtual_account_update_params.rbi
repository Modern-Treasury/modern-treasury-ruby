# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The ledger account that you'd like to link to the virtual account.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        counterparty_id: nil,
        # The ledger account that you'd like to link to the virtual account.
        ledger_account_id: nil,
        metadata: nil,
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
