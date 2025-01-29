# typed: strong

module ModernTreasury
  module Resources
    class Counterparties
      sig do
        params(
          params: T.any(ModernTreasury::Models::CounterpartyCreateParams, T::Hash[Symbol, T.anything]),
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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Counterparty)
      end
      def create(
        params,
        name:,
        accounting:,
        accounts:,
        email:,
        ledger_type:,
        legal_entity:,
        legal_entity_id:,
        metadata:,
        send_remittance_advice:,
        taxpayer_identifier:,
        verification_status:,
        request_options: {}
      ); end

      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Counterparty)
      end
      def retrieve(id, request_options: {}); end

      sig do
        params(
          id: String,
          email: String,
          legal_entity_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String,
          send_remittance_advice: T::Boolean,
          taxpayer_identifier: String,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::Counterparty)
      end
      def update(
        id,
        email:,
        legal_entity_id:,
        metadata:,
        name:,
        send_remittance_advice:,
        taxpayer_identifier:,
        request_options: {}
      ); end

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
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Page[ModernTreasury::Models::Counterparty])
      end
      def list(
        after_cursor:,
        created_at_lower_bound:,
        created_at_upper_bound:,
        email:,
        legal_entity_id:,
        metadata:,
        name:,
        per_page:,
        request_options: {}
      ); end

      sig { params(id: String, request_options: ModernTreasury::RequestOpts).returns(NilClass) }
      def delete(id, request_options: {}); end

      sig do
        params(
          id: String,
          params: T.any(
            ModernTreasury::Models::CounterpartyCollectAccountParams,
            T::Hash[Symbol, T.anything]
          ),
          direction: Symbol,
          custom_redirect: String,
          fields: T::Array[Symbol],
          send_email: T::Boolean,
          request_options: ModernTreasury::RequestOpts
        ).returns(ModernTreasury::Models::CounterpartyCollectAccountResponse)
      end
      def collect_account(
        id,
        params,
        direction:,
        custom_redirect:,
        fields:,
        send_email:,
        request_options: {}
      )
      end

      sig { params(client: ModernTreasury::Client).void }
      def initialize(client:); end
    end
  end
end
