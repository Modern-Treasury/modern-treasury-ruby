# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentReferences
      # get payment_reference
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
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

      # list payment_references
      #
      # @overload list(after_cursor: nil, per_page: nil, reference_number: nil, referenceable_id: nil, referenceable_type: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      # @param per_page [Integer]
      # @param reference_number [String]
      # @param referenceable_id [String]
      # @param referenceable_type [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType]
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentReference>]
      #
      # @see ModernTreasury::Models::PaymentReferenceListParams
      def list(params = {})
        parsed, options = ModernTreasury::Models::PaymentReferenceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/payment_references",
          query: parsed,
          page: ModernTreasury::Page,
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
