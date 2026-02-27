# frozen_string_literal: true

module ModernTreasury
  module Resources
    class Returns
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ReturnCreateParams} for more details.
      #
      # Create a return.
      #
      # @overload create(returnable_id:, returnable_type:, additional_information: nil, code: nil, corrections: nil, data: nil, date_of_death: nil, reason: nil, reconciliation_status: nil, request_options: {})
      #
      # @param returnable_id [String, nil] The ID of the object being returned or `null`.
      #
      # @param returnable_type [Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType] The type of object being returned. Currently, this may only be incoming*payment*
      #
      # @param additional_information [String, nil] Some returns may include additional information from the bank. In these cases, t
      #
      # @param code [Symbol, ModernTreasury::Models::ReturnCreateParams::Code, nil] The return code. For ACH returns, this is the required ACH return code.
      #
      # @param corrections [ModernTreasury::Models::ReturnCreateParams::Corrections, nil] Only relevant for ACH NOC returns. This is an object containing all of the new a
      #
      # @param data [Object, nil] The raw data from the return file that we get from the bank.
      #
      # @param date_of_death [Date, nil] If the return code is `R14` or `R15` this is the date the deceased counterparty
      #
      # @param reason [String, nil] An optional description of the reason for the return. This is for internal usage
      #
      # @param reconciliation_status [Symbol, ModernTreasury::Models::ReturnCreateParams::ReconciliationStatus] One of `unreconciled`, `tentatively_reconciled` or `reconciled`.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ReturnObject]
      #
      # @see ModernTreasury::Models::ReturnCreateParams
      def create(params)
        parsed, options = ModernTreasury::ReturnCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/returns",
          body: parsed,
          model: ModernTreasury::ReturnObject,
          options: options
        )
      end

      # Get a single return.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of an existing return.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::ReturnObject]
      #
      # @see ModernTreasury::Models::ReturnRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/returns/%1$s", id],
          model: ModernTreasury::ReturnObject,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::ReturnListParams} for more details.
      #
      # Get a list of returns.
      #
      # @overload list(after_cursor: nil, counterparty_id: nil, internal_account_id: nil, per_page: nil, returnable_id: nil, returnable_type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param counterparty_id [String] Specify `counterparty_id` if you wish to see returns that occurred with a specif
      #
      # @param internal_account_id [String] Specify `internal_account_id` if you wish to see returns to/from a specific acco
      #
      # @param per_page [Integer]
      #
      # @param returnable_id [String] The ID of a valid returnable. Must be accompanied by `returnable_type`.
      #
      # @param returnable_type [Symbol, ModernTreasury::Models::ReturnListParams::ReturnableType] One of `payment_order`, `reversal`, or `incoming_payment_detail`. Must be accomp
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::ReturnObject>]
      #
      # @see ModernTreasury::Models::ReturnListParams
      def list(params = {})
        parsed, options = ModernTreasury::ReturnListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/returns",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::ReturnObject,
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
