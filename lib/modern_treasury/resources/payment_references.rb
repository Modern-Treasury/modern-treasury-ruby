# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentReferences
      # get payment_reference
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] id
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::PaymentReference]
      #
      # @see ModernTreasury::Models::PaymentReferenceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/payment_references/%1$s", id],
          model: ModernTreasury::Models::PaymentReference,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::PaymentReferenceListParams} for more details.
      #
      # list payment_references
      #
      # @overload list(after_cursor: nil, per_page: nil, reference_number: nil, referenceable_id: nil, referenceable_type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param per_page [Integer]
      #
      # @param reference_number [String] The actual reference number assigned by the bank.
      #
      # @param referenceable_id [String] The id of the referenceable to search for. Must be accompanied by the referencea
      # ...
      #
      # @param referenceable_type [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType] One of the referenceable types. This must be accompanied by the id of the refere
      # ...
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::PaymentReference>]
      #
      # @see ModernTreasury::Models::PaymentReferenceListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::PaymentReferenceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/payment_references",
          query: parsed,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::Models::PaymentReference,
          options: options
        )
      end

      # @deprecated use `retrieve` instead
      #
      # get payment_reference
      alias_method :retireve, :retrieve

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
