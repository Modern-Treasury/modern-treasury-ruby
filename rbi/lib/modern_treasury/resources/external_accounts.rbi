# typed: strong

module ModernTreasury
  module Resources
    class ExternalAccounts
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
        account_type: nil,
        contact_details: nil,
        ledger_account: nil,
        metadata: nil,
        name: nil,
        party_address: nil,
        party_identifier: nil,
        party_name: nil,
        party_type: nil,
        plaid_processor_token: nil,
        routing_details: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ExternalAccount)
      end
      def retrieve(id, request_options: {})
      end

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
        id,
        account_type: nil,
        counterparty_id: nil,
        metadata: nil,
        name: nil,
        party_address: nil,
        party_name: nil,
        party_type: nil,
        request_options: {}
      )
      end

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
        metadata: nil,
        party_name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .void
      end
      def delete(id, request_options: {})
      end

      sig do
        params(
          id: String,
          amounts: T::Array[Integer],
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::ExternalAccount)
      end
      def complete_verification(id, amounts: nil, request_options: {})
      end

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
        id,
        originating_account_id:,
        payment_type:,
        currency: nil,
        fallback_type: nil,
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
