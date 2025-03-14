# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentReferences
      # get payment_reference
      #
      # @param id [String] id
      #
      # @param params [ModernTreasury::Models::PaymentReferenceRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Models::PaymentReference]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["api/payment_references/%0s", id],
          model: ModernTreasury::Models::PaymentReference,
          options: params[:request_options]
        )
      end

      # list payment_references
      #
      # @param params [ModernTreasury::Models::PaymentReferenceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after_cursor
      #
      #   @option params [Integer] :per_page
      #
      #   @option params [String] :reference_number The actual reference number assigned by the bank.
      #
      #   @option params [String] :referenceable_id The id of the referenceable to search for. Must be accompanied by the
      #     referenceable_type or will return an error.
      #
      #   @option params [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType] :referenceable_type One of the referenceable types. This must be accompanied by the id of the
      #     referenceable or will return an error.
      #
      #   @option params [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentReference>]
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

      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
