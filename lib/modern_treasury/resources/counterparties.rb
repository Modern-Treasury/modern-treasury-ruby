# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Counterparties
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::CounterpartyCreateParams} for more details.
      #
      # Create a new counterparty.
      #
      # @overload create(name:, accounting: nil, accounts: nil, email: nil, external_id: nil, ledger_type: nil, legal_entity: nil, legal_entity_id: nil, metadata: nil, send_remittance_advice: nil, taxpayer_identifier: nil, verification_status: nil, request_options: {})
      #
      # @param name [String, nil] A human friendly name for this counterparty.
      #
      # @param accounting [ModernTreasury::Models::CounterpartyCreateParams::Accounting]
      #
      # @param accounts [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>] The accounts for this counterparty.
      #
      # @param email [String, nil] The counterparty's email.
      #
      # @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      # @param ledger_type [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType] An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #
      # @param legal_entity [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity]
      #
      # @param legal_entity_id [String, nil] The id of the legal entity.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      # @param send_remittance_advice [Boolean] Send an email to the counterparty whenever an associated payment order is sent t
      #
      # @param taxpayer_identifier [String] Either a valid SSN or EIN.
      #
      # @param verification_status [String] The verification status of the counterparty.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Counterparty]
      #
      # @see ModernTreasury::Models::CounterpartyCreateParams
      def create(params)
        parsed, options = ModernTreasury::CounterpartyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/counterparties",
          body: parsed,
          model: ModernTreasury::Counterparty,
          options: options
        )
      end

      # Get details on a single counterparty.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of an existing counterparty.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Counterparty]
      #
      # @see ModernTreasury::Models::CounterpartyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/counterparties/%1$s", id],
          model: ModernTreasury::Counterparty,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::CounterpartyUpdateParams} for more details.
      #
      # Updates a given counterparty with new information.
      #
      # @overload update(id, email: nil, external_id: nil, legal_entity_id: nil, metadata: nil, name: nil, send_remittance_advice: nil, taxpayer_identifier: nil, request_options: {})
      #
      # @param id [String] The id of an existing counterparty.
      #
      # @param email [String] A new email for the counterparty.
      #
      # @param external_id [String, nil] An optional user-defined 180 character unique identifier.
      #
      # @param legal_entity_id [String, nil] The id of the legal entity.
      #
      # @param metadata [Hash{Symbol=>String}] Additional data in the form of key-value pairs. Pairs can be removed by passing
      #
      # @param name [String] A new name for the counterparty. Will only update if passed.
      #
      # @param send_remittance_advice [Boolean] If this is `true`, Modern Treasury will send an email to the counterparty whenev
      #
      # @param taxpayer_identifier [String] Either a valid SSN or EIN.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::Counterparty]
      #
      # @see ModernTreasury::Models::CounterpartyUpdateParams
      def update(id, params = {})
        parsed, options = ModernTreasury::CounterpartyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/counterparties/%1$s", id],
          body: parsed,
          model: ModernTreasury::Counterparty,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::CounterpartyListParams} for more details.
      #
      # Get a paginated list of all counterparties.
      #
      # @overload list(after_cursor: nil, created_at_lower_bound: nil, created_at_upper_bound: nil, email: nil, external_id: nil, legal_entity_id: nil, metadata: nil, name: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param created_at_lower_bound [Time] Used to return counterparties created after some datetime.
      #
      # @param created_at_upper_bound [Time] Used to return counterparties created before some datetime.
      #
      # @param email [String] Performs a partial string match of the email field. This is also case insensitiv
      #
      # @param external_id [String] An optional user-defined 180 character unique identifier.
      #
      # @param legal_entity_id [String] Filters for counterparties with the given legal entity ID.
      #
      # @param metadata [Hash{Symbol=>String}] For example, if you want to query for records with metadata key `Type` and value
      #
      # @param name [String] Performs a partial string match of the name field. This is also case insensitive
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::Counterparty>]
      #
      # @see ModernTreasury::Models::CounterpartyListParams
      def list(params = {})
        parsed, options = ModernTreasury::CounterpartyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/counterparties",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Counterparty,
          options: options
        )
      end

      # Deletes a given counterparty.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of an existing counterparty.
      #
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

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::CounterpartyCollectAccountParams} for more details.
      #
      # Send an email requesting account details.
      #
      # @overload collect_account(id, direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {})
      #
      # @param id [String] counterparty id
      #
      # @param direction [Symbol, ModernTreasury::Models::TransactionDirection] One of `credit` or `debit`. Use `credit` when you want to pay a counterparty. Us
      #
      # @param custom_redirect [String] The URL you want your customer to visit upon filling out the form. By default, t
      #
      # @param fields [Array<Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field>] The list of fields you want on the form. This field is optional and if it is not
      #
      # @param send_email [Boolean] By default, Modern Treasury will send an email to your counterparty that include
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::CounterpartyCollectAccountResponse]
      #
      # @see ModernTreasury::Models::CounterpartyCollectAccountParams
      def collect_account(id, params)
        parsed, options = ModernTreasury::CounterpartyCollectAccountParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/counterparties/%1$s/collect_account", id],
          body: parsed,
          model: ModernTreasury::CounterpartyCollectAccountResponse,
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
