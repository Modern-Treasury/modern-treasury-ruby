# typed: strong

module ModernTreasury
  module Models
    class VirtualAccountCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::VirtualAccountCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of the internal account that this virtual account is associated with.
      sig { returns(String) }
      attr_accessor :internal_account_id

      # The name of the virtual account.
      sig { returns(String) }
      attr_accessor :name

      # An array of account detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::AccountDetailCreate])) }
      attr_reader :account_details

      sig do
        params(
          account_details: T::Array[ModernTreasury::AccountDetailCreate::OrHash]
        ).void
      end
      attr_writer :account_details

      # The ID of the counterparty that the virtual account belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # The ID of a credit normal ledger account. When money leaves the virtual account,
      # this ledger account will be credited. Must be accompanied by a
      # debit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      attr_reader :credit_ledger_account_id

      sig { params(credit_ledger_account_id: String).void }
      attr_writer :credit_ledger_account_id

      # The ID of a debit normal ledger account. When money enters the virtual account,
      # this ledger account will be debited. Must be accompanied by a
      # credit_ledger_account_id if present.
      sig { returns(T.nilable(String)) }
      attr_reader :debit_ledger_account_id

      sig { params(debit_ledger_account_id: String).void }
      attr_writer :debit_ledger_account_id

      # An optional description for internal use.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Specifies a ledger account object that will be created with the virtual account.
      # The resulting ledger account is linked to the virtual account for auto-ledgering
      # IPDs.
      sig { returns(T.nilable(ModernTreasury::LedgerAccountCreateRequest)) }
      attr_reader :ledger_account

      sig do
        params(
          ledger_account: ModernTreasury::LedgerAccountCreateRequest::OrHash
        ).void
      end
      attr_writer :ledger_account

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      # An array of routing detail objects.
      sig { returns(T.nilable(T::Array[ModernTreasury::RoutingDetailCreate])) }
      attr_reader :routing_details

      sig do
        params(
          routing_details: T::Array[ModernTreasury::RoutingDetailCreate::OrHash]
        ).void
      end
      attr_writer :routing_details

      sig do
        params(
          internal_account_id: String,
          name: String,
          account_details:
            T::Array[ModernTreasury::AccountDetailCreate::OrHash],
          counterparty_id: String,
          credit_ledger_account_id: String,
          debit_ledger_account_id: String,
          description: String,
          ledger_account: ModernTreasury::LedgerAccountCreateRequest::OrHash,
          metadata: T::Hash[Symbol, String],
          routing_details:
            T::Array[ModernTreasury::RoutingDetailCreate::OrHash],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the internal account that this virtual account is associated with.
        internal_account_id:,
        # The name of the virtual account.
        name:,
        # An array of account detail objects.
        account_details: nil,
        # The ID of the counterparty that the virtual account belongs to.
        counterparty_id: nil,
        # The ID of a credit normal ledger account. When money leaves the virtual account,
        # this ledger account will be credited. Must be accompanied by a
        # debit_ledger_account_id if present.
        credit_ledger_account_id: nil,
        # The ID of a debit normal ledger account. When money enters the virtual account,
        # this ledger account will be debited. Must be accompanied by a
        # credit_ledger_account_id if present.
        debit_ledger_account_id: nil,
        # An optional description for internal use.
        description: nil,
        # Specifies a ledger account object that will be created with the virtual account.
        # The resulting ledger account is linked to the virtual account for auto-ledgering
        # IPDs.
        ledger_account: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # An array of routing detail objects.
        routing_details: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            internal_account_id: String,
            name: String,
            account_details: T::Array[ModernTreasury::AccountDetailCreate],
            counterparty_id: String,
            credit_ledger_account_id: String,
            debit_ledger_account_id: String,
            description: String,
            ledger_account: ModernTreasury::LedgerAccountCreateRequest,
            metadata: T::Hash[Symbol, String],
            routing_details: T::Array[ModernTreasury::RoutingDetailCreate],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
