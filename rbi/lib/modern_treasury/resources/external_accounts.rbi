# typed: strong

module ModernTreasury
  module Resources
    class ExternalAccounts
      sig do
        params(
          params: T.any(ModernTreasury::Models::ExternalAccountCreateParams, T::Hash[Symbol, T.anything]),
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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExternalAccount)
      end
      def create(
        params,
        counterparty_id:,
        account_details:,
        account_type:,
        contact_details:,
        ledger_account:,
        metadata:,
        name:,
        party_address:,
        party_identifier:,
        party_name:,
        party_type:,
        plaid_processor_token:,
        routing_details:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExternalAccount)
      end
      def retrieve(id, request_options: {}); end

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExternalAccount)
      end
      def update(
        id,
        account_type:,
        counterparty_id:,
        metadata:,
        name:,
        party_address:,
        party_name:,
        party_type:,
        request_options: {}
      ); end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          metadata: T::Hash[Symbol, String],
          party_name: String,
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::ExternalAccount])
      end
      def list(after_cursor:, counterparty_id:, metadata:, party_name:, per_page:, request_options: {}); end

      sig { params(id: String, request_options: ModernTreasury::RequestOpts).returns(NilClass) }
      def delete(id, request_options: {}); end

      sig do
        params(
          id: String,
          amounts: T::Array[Integer],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExternalAccount)
      end
      def complete_verification(id, amounts:, request_options: {}); end

      sig do
        params(
          id: String,
          params: T.any(ModernTreasury::Models::ExternalAccountVerifyParams, T::Hash[Symbol, T.anything]),
          originating_account_id: String,
          payment_type: Symbol,
          currency: Symbol,
          fallback_type: Symbol,
          priority: Symbol,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::ExternalAccountVerifyResponse::Variants)
      end
      def verify(
        id,
        params,
        originating_account_id:,
        payment_type:,
        currency:,
        fallback_type:,
        priority:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
