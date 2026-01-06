# typed: strong

module ModernTreasury
  module Resources
    class VirtualAccounts
      # create virtual_account
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
        ).returns(ModernTreasury::VirtualAccount)
      end
      def create(
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

      # get virtual_account
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::VirtualAccount)
      end
      def retrieve(
        # Virtual Acccount ID
        id,
        request_options: {}
      )
      end

      # update virtual_account
      sig do
        params(
          id: String,
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::VirtualAccount)
      end
      def update(
        # Virtual Acccount ID
        id,
        counterparty_id: nil,
        # The ledger account that you'd like to link to the virtual account.
        ledger_account_id: nil,
        metadata: nil,
        name: nil,
        request_options: {}
      )
      end

      # Get a list of virtual accounts.
      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[ModernTreasury::VirtualAccount]
        )
      end
      def list(
        after_cursor: nil,
        counterparty_id: nil,
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        request_options: {}
      )
      end

      # delete virtual_account
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::VirtualAccount)
      end
      def delete(
        # Virtual Acccount ID
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
