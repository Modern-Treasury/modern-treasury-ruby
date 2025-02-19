# typed: strong

module ModernTreasury
  module Resources
    class Counterparties
      sig do
        params(
          name: T.nilable(String),
          accounting: ModernTreasury::Models::CounterpartyCreateParams::Accounting,
          accounts: T::Array[ModernTreasury::Models::CounterpartyCreateParams::Account],
          email: T.nilable(String),
          ledger_type: Symbol,
          legal_entity: ModernTreasury::Models::CounterpartyCreateParams::LegalEntity,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          verification_status: Symbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::Counterparty)
      end
      def create(
        name:,
        accounting: nil,
        accounts: nil,
        email: nil,
        ledger_type: nil,
        legal_entity: nil,
        legal_entity_id: nil,
        metadata: nil,
        send_remittance_advice: nil,
        taxpayer_identifier: nil,
        verification_status: nil,
        request_options: {}
      )
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::Counterparty)
      end
      def retrieve(id, request_options: {})
      end

      sig do
        params(
          id: String,
          email: String,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::Counterparty)
      end
      def update(
        id,
        email: nil,
        legal_entity_id: nil,
        metadata: nil,
        name: nil,
        send_remittance_advice: nil,
        taxpayer_identifier: nil,
        request_options: {}
      )
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          created_at_lower_bound: Time,
          created_at_upper_bound: Time,
          email: String,
          legal_entity_id: String,
          metadata: T::Hash[Symbol, String],
          name: String,
          per_page: Integer,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Page[ModernTreasury::Models::Counterparty])
      end
      def list(
        after_cursor: nil,
        created_at_lower_bound: nil,
        created_at_upper_bound: nil,
        email: nil,
        legal_entity_id: nil,
        metadata: nil,
        name: nil,
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
          direction: Symbol,
          custom_redirect: String,
          fields: T::Array[Symbol],
          send_email: T::Boolean,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(ModernTreasury::Models::CounterpartyCollectAccountResponse)
      end
      def collect_account(
        id,
        direction:,
        custom_redirect: nil,
        fields: nil,
        send_email: nil,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:)
      end
    end
  end
end
