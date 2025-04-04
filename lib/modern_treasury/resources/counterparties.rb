# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Counterparties
      # Create a new counterparty.
      #
      # @param params [ModernTreasury::Models::CounterpartyCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :name A human friendly name for this counterparty.
      #
      #   @option params [ModernTreasury::Models::CounterpartyCreateParams::Accounting] :accounting
      #
      #   @option params [Array<ModernTreasury::Models::CounterpartyCreateParams::Account>] :accounts The accounts for this counterparty.
      #
      #   @option params [String, nil] :email The counterparty's email.
      #
      #   @option params [Symbol, ModernTreasury::Models::CounterpartyCreateParams::LedgerType] :ledger_type An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #     or `vendor`.
      #
      #   @option params [ModernTreasury::Models::CounterpartyCreateParams::LegalEntity] :legal_entity
      #
      #   @option params [String, nil] :legal_entity_id The id of the legal entity.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #     strings.
      #
      #   @option params [Boolean] :send_remittance_advice Send an email to the counterparty whenever an associated payment order is sent
      #     to the bank.
      #
      #   @option params [String] :taxpayer_identifier Either a valid SSN or EIN.
      #
      #   @option params [Symbol, ModernTreasury::Models::CounterpartyCreateParams::VerificationStatus] :verification_status The verification status of the counterparty.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Counterparty]
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
      # @param id [String] The id of an existing counterparty.
      #
      # @param params [ModernTreasury::Models::CounterpartyRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Counterparty]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/counterparties/%0s", id],
          model: ModernTreasury::Models::Counterparty,
          options: params[:request_options]
        )
      end

      # Updates a given counterparty with new information.
      #
      # @param id [String] The id of an existing counterparty.
      #
      # @param params [ModernTreasury::Models::CounterpartyUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :email A new email for the counterparty.
      #
      #   @option params [String, nil] :legal_entity_id The id of the legal entity.
      #
      #   @option params [Hash{Symbol=>String}] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #     an empty string or `null` as the value.
      #
      #   @option params [String] :name A new name for the counterparty. Will only update if passed.
      #
      #   @option params [Boolean] :send_remittance_advice If this is `true`, Modern Treasury will send an email to the counterparty
      #     whenever an associated payment order is sent to the bank.
      #
      #   @option params [String] :taxpayer_identifier Either a valid SSN or EIN.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::Counterparty]
      def update(id, params = {})
        parsed, options = ModernTreasury::Models::CounterpartyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/counterparties/%0s", id],
          body: parsed,
          model: ModernTreasury::Models::Counterparty,
          options: options
        )
      end

      # Get a paginated list of all counterparties.
      #
      # @param params [ModernTreasury::Models::CounterpartyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Time] :created_at_lower_bound Used to return counterparties created after some datetime.
      #
      #   @option params [Time] :created_at_upper_bound Used to return counterparties created before some datetime.
      #
      #   @option params [String] :email Performs a partial string match of the email field. This is also case
      #     insensitive.
      #
      #   @option params [String] :legal_entity_id Filters for counterparties with the given legal entity ID.
      #
      #   @option params [Hash{Symbol=>String}] :metadata For example, if you want to query for records with metadata key `Type` and value
      #     `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #     parameters.
      #
      #   @option params [String] :name Performs a partial string match of the name field. This is also case
      #     insensitive.
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Counterparty>]
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
      # @param id [String] The id of an existing counterparty.
      #
      # @param params [ModernTreasury::Models::CounterpartyDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/counterparties/%0s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Send an email requesting account details.
      #
      # @param id [String] counterparty id
      #
      # @param params [ModernTreasury::Models::CounterpartyCollectAccountParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, ModernTreasury::Models::TransactionDirection] :direction One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      #     Use `debit` when you need to charge a counterparty. This field helps us send a
      #     more tailored email to your counterparties."
      #
      #   @option params [String] :custom_redirect The URL you want your customer to visit upon filling out the form. By default,
      #     they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
      #     URL if set.
      #
      #   @option params [Array<Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field>] :fields The list of fields you want on the form. This field is optional and if it is not
      #     set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
      #     \"routingNumber\", \"address\"]. The full list of options is [\"name\",
      #     \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
      #     \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
      #
      #   @option params [Boolean] :send_email By default, Modern Treasury will send an email to your counterparty that
      #     includes a link to the form they must fill out. However, if you would like to
      #     send the counterparty the link, you can set this parameter to `false`. The JSON
      #     body will include the link to the secure Modern Treasury form.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::CounterpartyCollectAccountResponse]
      def collect_account(id, params)
        parsed, options = ModernTreasury::Models::CounterpartyCollectAccountParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/counterparties/%0s/collect_account", id],
          body: parsed,
          model: ModernTreasury::Models::CounterpartyCollectAccountResponse,
          options: options
        )
      end

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
