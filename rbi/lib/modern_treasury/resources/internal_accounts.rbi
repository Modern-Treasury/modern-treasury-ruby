# typed: strong

module ModernTreasury
  module Resources
    class InternalAccounts
      sig { returns(ModernTreasury::Resources::InternalAccounts::BalanceReports) }
      def balance_reports
      end

      # create internal account
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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::InternalAccount)
      end
      def create(
        connection_id:,
        currency:,
        name:,
        party_name:,
        counterparty_id: nil,
        legal_entity_id: nil,
        parent_account_id: nil,
        party_address: nil,
        vendor_attributes: nil,
        request_options: {}
      )
      end

      # get internal account
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::InternalAccount)
      end
      def retrieve(id, request_options: {})
      end

      # update internal account
      sig do
        params(
          id: String,
          counterparty_id: String,
          ledger_account_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          parent_account_id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::InternalAccount)
      end
      def update(
        id,
        counterparty_id: nil,
        ledger_account_id: nil,
        metadata: nil,
        name: nil,
        parent_account_id: nil,
        request_options: {}
      )
      end

      # list internal accounts
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
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::InternalAccount])
      end
      def list(
        after_cursor: nil,
        counterparty_id: nil,
        currency: nil,
        legal_entity_id: nil,
        metadata: nil,
        payment_direction: nil,
        payment_type: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
