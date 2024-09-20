# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Returns
      def initialize(client:)
        @client = client
      end

      # Create a return.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :returnable_id The ID of the object being returned or `null`.
      # @option params [Symbol] :returnable_type The type of object being returned. Currently, this may only be
      #   incoming_payment_detail.
      # @option params [String] :additional_information Some returns may include additional information from the bank. In these cases,
      #   this string will be present.
      # @option params [Symbol] :code The return code. For ACH returns, this is the required ACH return code.
      # @option params [Date] :date_of_death If the return code is `R14` or `R15` this is the date the deceased counterparty
      #   passed away.
      # @option params [String] :reason An optional description of the reason for the return. This is for internal usage
      #   and will not be transmitted to the bank.”
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ReturnObject]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/api/returns"
        req[:body] = params
        req[:model] = ModernTreasury::Models::ReturnObject
        @client.request(req, opts)
      end

      # Get a single return.
      #
      # @param id [String] The ID of an existing return.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ReturnObject]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/returns/#{id}"
        req[:model] = ModernTreasury::Models::ReturnObject
        @client.request(req, opts)
      end

      # Get a list of returns.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [String] :counterparty_id Specify `counterparty_id` if you wish to see returns that occurred with a
      #   specific counterparty.
      # @option params [String] :internal_account_id Specify `internal_account_id` if you wish to see returns to/from a specific
      #   account.
      # @option params [Integer] :per_page
      # @option params [String] :returnable_id The ID of a valid returnable. Must be accompanied by `returnable_type`.
      # @option params [Symbol] :returnable_type One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #   Must be accompanied by `returnable_id`.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ReturnObject>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/returns"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::ReturnObject
        @client.request(req, opts)
      end
    end
  end
end
