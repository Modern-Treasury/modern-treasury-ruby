# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Counterparties
      # Create a new counterparty.
      #
      # @overload create(name:, accounting: nil, accounts: nil, email: nil, ledger_type: nil, legal_entity: nil, legal_entity_id: nil, metadata: nil, send_remittance_advice: nil, taxpayer_identifier: nil, verification_status: nil, request_options: {})
      #
      # @param name [String, nil]
      # @param accounting [ModernTreasury::Models::CounterpartyCreateParams::Accounting]
      # @param accounts [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>]
      # @param email [String, nil]
      # @param ledger_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType]
      # @param legal_entity [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity]
      # @param legal_entity_id [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param send_remittance_advice [Boolean]
      # @param taxpayer_identifier [String]
      # @param verification_status [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Counterparty]
      #
      # @see ModernTreasury::Models::CounterpartyCreateParams
      def create(params)
        parsed, options = ModernTreasury::Models::CounterpartyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/counterparties",
          body: parsed,
          model: ModernTreasury::Models::Counterparty,
          options: options
        )
      end

      # Get details on a single counterparty.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Counterparty]
      #
      # @see ModernTreasury::Models::CounterpartyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/counterparties/%1$s", id],
          model: ModernTreasury::Models::Counterparty,
          options: params[:request_options]
        )
      end

      # Updates a given counterparty with new information.
      #
      # @overload update(id, email: nil, legal_entity_id: nil, metadata: nil, name: nil, send_remittance_advice: nil, taxpayer_identifier: nil, request_options: {})
      #
      # @param id [String]
      # @param email [String]
      # @param legal_entity_id [String, nil]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param send_remittance_advice [Boolean]
      # @param taxpayer_identifier [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Counterparty]
      #
      # @see ModernTreasury::Models::CounterpartyUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::CounterpartyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/counterparties/%1$s", id],
          body: parsed,
          model: ModernTreasury::Models::Counterparty,
          options: options
        )
      end

      # Get a paginated list of all counterparties.
      #
      # @overload list(after_cursor: nil, created_at_lower_bound: nil, created_at_upper_bound: nil, email: nil, legal_entity_id: nil, metadata: nil, name: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param created_at_lower_bound [Time]
      # @param created_at_upper_bound [Time]
      # @param email [String]
      # @param legal_entity_id [String]
      # @param metadata [Hash{Symbol=>String}]
      # @param name [String]
      # @param per_page [Integer]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Counterparty>]
      #
      # @see ModernTreasury::Models::CounterpartyListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::CounterpartyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/counterparties",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::Counterparty,
          options: options
        )
      end

      # Deletes a given counterparty.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ModernTreasury::Models::CounterpartyDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/counterparties/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Send an email requesting account details.
      #
      # @overload collect_account(id, direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {})
      #
      # @param id [String]
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      # @param custom_redirect [String]
      # @param fields [Array<Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field>]
      # @param send_email [Boolean]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::CounterpartyCollectAccountResponse]
      #
      # @see ModernTreasury::Models::CounterpartyCollectAccountParams
      def collect_account(id, params)
        parsed, options = ModernTreasury::Models::CounterpartyCollectAccountParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/counterparties/%1$s/collect_account", id],
          body: parsed,
          model: ModernTreasury::Models::CounterpartyCollectAccountResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
