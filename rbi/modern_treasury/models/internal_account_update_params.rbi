# typed: strong

module ModernTreasury
  module Models
    class InternalAccountUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::InternalAccountUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The Counterparty associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The Ledger Account associated to this account.
      sig { returns(T.nilable(String)) }
      attr_reader :ledger_account_id

      sig { params(ledger_account_id: String).void }
      attr_writer :ledger_account_id

      # Additional data in the form of key-value pairs. Pairs can be removed by passing
      # an empty string or `null` as the value.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # The nickname for the internal account.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The parent internal account for this account.
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
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The Counterparty associated to this account.
        counterparty_id: nil,
        # The Ledger Account associated to this account.
        ledger_account_id: nil,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        # an empty string or `null` as the value.
        metadata: nil,
        # The nickname for the internal account.
        name: nil,
        # The parent internal account for this account.
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
