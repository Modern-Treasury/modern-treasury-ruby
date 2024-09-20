# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Counterparties
      def initialize(client:)
        @client = client
      end

      # Create a new counterparty.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :name A human friendly name for this counterparty.
      # @option params [Accounting] :accounting
      # @option params [Array<Account>] :accounts The accounts for this counterparty.
      # @option params [String] :email The counterparty's email.
      # @option params [Symbol] :ledger_type An optional type to auto-sync the counterparty to your ledger. Either `customer`
      #   or `vendor`.
      # @option params [LegalEntity] :legal_entity
      # @option params [String] :legal_entity_id The id of the legal entity.
      # @option params [Hash] :metadata Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      # @option params [Boolean] :send_remittance_advice Send an email to the counterparty whenever an associated payment order is sent
      #   to the bank.
      # @option params [String] :taxpayer_identifier Either a valid SSN or EIN.
      # @option params [Symbol] :verification_status The verification status of the counterparty.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Counterparty]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/counterparties"
        req[:body] = params
        req[:model] = ModernTreasury::Models::Counterparty
        @client.request(req, opts)
      end

      # Get details on a single counterparty.
      #
      # @param id [String] The id of an existing counterparty.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Counterparty]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/counterparties/#{id}"
        req[:model] = ModernTreasury::Models::Counterparty
        @client.request(req, opts)
      end

      # Updates a given counterparty with new information.
      #
      # @param id [String] The id of an existing counterparty.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :email A new email for the counterparty.
      # @option params [String] :legal_entity_id The id of the legal entity.
      # @option params [Hash] :metadata Additional data in the form of key-value pairs. Pairs can be removed by passing
      #   an empty string or `null` as the value.
      # @option params [String] :name A new name for the counterparty. Will only update if passed.
      # @option params [Boolean] :send_remittance_advice If this is `true`, Modern Treasury will send an email to the counterparty
      #   whenever an associated payment order is sent to the bank.
      # @option params [String] :taxpayer_identifier Either a valid SSN or EIN.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::Counterparty]
      def update(id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/api/counterparties/#{id}"
        req[:body] = params
        req[:model] = ModernTreasury::Models::Counterparty
        @client.request(req, opts)
      end

      # Get a paginated list of all counterparties.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [DateTime] :created_at_lower_bound Used to return counterparties created after some datetime.
      # @option params [DateTime] :created_at_upper_bound Used to return counterparties created before some datetime.
      # @option params [String] :email Performs a partial string match of the email field. This is also case
      #   insensitive.
      # @option params [String] :legal_entity_id Filters for counterparties with the given legal entity ID.
      # @option params [Hash] :metadata For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      # @option params [String] :name Performs a partial string match of the name field. This is also case
      #   insensitive.
      # @option params [Integer] :per_page
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::Counterparty>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/counterparties"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::Counterparty
        @client.request(req, opts)
      end

      # Deletes a given counterparty.
      #
      # @param id [String] The id of an existing counterparty.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete(id, opts = {})
        req = {}
        req[:method] = :delete
        req[:path] = "/api/counterparties/#{id}"
        req[:model] = NilClass
        @client.request(req, opts)
      end

      # Send an email requesting account details.
      #
      # @param id [String] counterparty id
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :direction One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      #   Use `debit` when you need to charge a counterparty. This field helps us send a
      #   more tailored email to your counterparties."
      # @option params [String] :custom_redirect The URL you want your customer to visit upon filling out the form. By default,
      #   they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
      #   URL if set.
      # @option params [Array<Symbol>] :fields The list of fields you want on the form. This field is optional and if it is not
      #   set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\"]. The full list of options is [\"name\",
      #   \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
      # @option params [Boolean] :send_email By default, Modern Treasury will send an email to your counterparty that
      #   includes a link to the form they must fill out. However, if you would like to
      #   send the counterparty the link, you can set this parameter to `false`. The JSON
      #   body will include the link to the secure Modern Treasury form.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::CounterpartyCollectAccountResponse]
      def collect_account(id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/counterparties/#{id}/collect_account"
        req[:body] = params
        req[:model] = ModernTreasury::Models::CounterpartyCollectAccountResponse
        @client.request(req, opts)
      end
    end
  end
end
