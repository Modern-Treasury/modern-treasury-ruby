# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Returns
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # Create a return.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::ReturnCreateParams] Attributes to send in this request.
      #   @option params [String] :returnable_id The ID of the object being returned or `null`.
      #   @option params [Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType] :returnable_type The type of object being returned. Currently, this may only be
      #     incoming_payment_detail.
      #   @option params [String, nil] :additional_information Some returns may include additional information from the bank. In these cases,
      #     this string will be present.
      #   @option params [Symbol, ModernTreasury::Models::ReturnCreateParams::Code, nil] :code The return code. For ACH returns, this is the required ACH return code.
      #   @option params [Date, nil] :date_of_death If the return code is `R14` or `R15` this is the date the deceased counterparty
      #     passed away.
      #   @option params [String, nil] :reason An optional description of the reason for the return. This is for internal usage
      #     and will not be transmitted to the bank.”
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ReturnObject]
      def create(params = {}, opts = {})
        parsed = ModernTreasury::Models::ReturnCreateParams.dump(params)
        req = {
          method: :post,
          path: "/api/returns",
          body: parsed,
          model: ModernTreasury::Models::ReturnObject
        }
        @client.request(req, opts)
      end

      # Get a single return.
      #
      # @param id [String] The ID of an existing return.
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::ReturnObject]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/returns/#{id}",
          model: ModernTreasury::Models::ReturnObject
        }
        @client.request(req, opts)
      end

      # Get a list of returns.
      #
      # @param params [Hash{Symbol => Object}, ModernTreasury::Models::ReturnListParams] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [String, nil] :counterparty_id Specify `counterparty_id` if you wish to see returns that occurred with a
      #     specific counterparty.
      #   @option params [String, nil] :internal_account_id Specify `internal_account_id` if you wish to see returns to/from a specific
      #     account.
      #   @option params [Integer, nil] :per_page
      #   @option params [String, nil] :returnable_id The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #   @option params [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType, nil] :returnable_type One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
      #     Must be accompanied by `returnable_id`.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::ReturnObject>]
      def list(params = {}, opts = {})
        parsed = ModernTreasury::Models::ReturnListParams.dump(params)
        req = {
          method: :get,
          path: "/api/returns",
          query: parsed,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::ReturnObject
        }
        @client.request(req, opts)
      end
    end
  end
end
