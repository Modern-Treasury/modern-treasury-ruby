# typed: strong

module ModernTreasury
  module Resources
    class InternalAccounts
      sig { returns(ModernTreasury::Resources::InternalAccounts::BalanceReports) }
      attr_reader :balance_reports

      sig do
        params(
          connection_id: String,
          currency: Symbol,
          name: String,
          party_name: String,
          counterparty_id: String,
          legal_entity_id: String,
          parent_account_id: String,
          party_address: ModernTreasury::Models::InternalAccountCreateParams::PartyAddress,
          vendor_attributes: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::InternalAccount)
      end
      def create(
        connection_id:,
        currency:,
        name:,
        party_name:,
        counterparty_id:,
        legal_entity_id:,
        parent_account_id:,
        party_address:,
        vendor_attributes:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::InternalAccount)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_account_id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::InternalAccount)
      end
      def update(
        id,
        counterparty_id:,
        ledger_account_id:,
        metadata:,
        name:,
        parent_account_id:,
        request_options: {}
      )
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          currency: Symbol,
          legal_entity_id: String,
          metadata: T::Hash[Symbol, String],
          payment_direction: Symbol,
          payment_type: Symbol,
          per_page: Integer,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::InternalAccount])
      end
      def list(
        after_cursor:,
        counterparty_id:,
        currency:,
        legal_entity_id:,
        metadata:,
        payment_direction:,
        payment_type:,
        per_page:,
        request_options: {}
      ); end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
