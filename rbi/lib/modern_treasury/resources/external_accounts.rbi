# typed: strong

module ModernTreasury
  module Resources
    class ExternalAccounts
      # create external account
      sig do
        params(
          counterparty_id: T.nilable(String),
          account_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::AccountDetail],
          account_type: Symbol,
          contact_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::ContactDetail],
          ledger_account: ModernTreasury::Models::ExternalAccountCreateParams::LedgerAccount,
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: ModernTreasury::Models::ExternalAccountCreateParams::PartyAddress,
          party_identifier: String,
          party_name: String,
          party_type: T.nilable(Symbol),
          plaid_processor_token: String,
          routing_details: T::Array[ModernTreasury::Models::ExternalAccountCreateParams::RoutingDetail],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ExternalAccount)
      end
      def create(
        counterparty_id:,
        account_details: nil,
        # Can be `checking`, `savings` or `other`.
        account_type: nil,
        contact_details: nil,
        # Specifies a ledger account object that will be created with the external
        #   account. The resulting ledger account is linked to the external account for
        #   auto-ledgering Payment objects. See
        #   https://docs.moderntreasury.com/docs/linking-to-other-modern-treasury-objects
        #   for more details.
        ledger_account: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        #   strings.
        metadata: nil,
        # A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        name: nil,
        # Required if receiving wire payments.
        party_address: nil,
        party_identifier: nil,
        # If this value isn't provided, it will be inherited from the counterparty's name.
        party_name: nil,
        # Either `individual` or `business`.
        party_type: nil,
        # If you've enabled the Modern Treasury + Plaid integration in your Plaid account,
        #   you can pass the processor token in this field.
        plaid_processor_token: nil,
        routing_details: nil,
        request_options: {}
      )
      end

      # show external account
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ExternalAccount)
      end
      def retrieve(
        # external account id
        id,
        request_options: {}
      )
      end

      # update external account
      sig do
        params(
          id: String,
          account_type: Symbol,
          counterparty_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: T.nilable(String),
          party_address: ModernTreasury::Models::ExternalAccountUpdateParams::PartyAddress,
          party_name: String,
          party_type: T.nilable(Symbol),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ExternalAccount)
      end
      def update(
        # external account id
        id,
        # Can be `checking`, `savings` or `other`.
        account_type: nil,
        counterparty_id: nil,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        #   an empty string or `null` as the value.
        metadata: nil,
        # A nickname for the external account. This is only for internal usage and won't
        #   affect any payments
        name: nil,
        party_address: nil,
        # If this value isn't provided, it will be inherited from the counterparty's name.
        party_name: nil,
        # Either `individual` or `business`.
        party_type: nil,
        request_options: {}
      )
      end

      # list external accounts
      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          metadata: T::Hash[Symbol, String],
          party_name: String,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::ExternalAccount])
      end
      def list(
        after_cursor: nil,
        counterparty_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        #   parameters.
        metadata: nil,
        # Searches the ExternalAccount's party_name AND the Counterparty's party_name
        party_name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      # delete external account
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def delete(
        # external account id
        id,
        request_options: {}
      )
      end

      # complete verification of external account
      sig do
        params(
          id: String,
          amounts: T::Array[Integer],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ExternalAccount)
      end
      def complete_verification(
        # external account id
        id,
        amounts: nil,
        request_options: {}
      )
      end

      # verify external account
      sig do
        params(
          id: String,
          originating_account_id: String,
          payment_type: Symbol,
          currency: Symbol,
          fallback_type: Symbol,
          priority: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(
            T.any(
              ModernTreasury::Models::ExternalAccount,
              ModernTreasury::Models::ExternalAccountVerifyResponse::ExternalAccountVerificationAttempt
            )
          )
      end
      def verify(
        # external account id
        id,
        # The ID of the internal account where the micro-deposits originate from. Both
        #   credit and debit capabilities must be enabled.
        originating_account_id:,
        # Can be `ach`, `eft`, or `rtp`.
        payment_type:,
        # Defaults to the currency of the originating account.
        currency: nil,
        # A payment type to fallback to if the original type is not valid for the
        #   receiving account. Currently, this only supports falling back from RTP to ACH
        #   (payment_type=rtp and fallback_type=ach)
        fallback_type: nil,
        # Either `normal` or `high`. For ACH payments, `high` represents a same-day ACH
        #   transfer. This will apply to both `payment_type` and `fallback_type`.
        priority: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
