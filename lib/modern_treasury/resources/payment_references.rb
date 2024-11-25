# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentReferences
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end

      # get payment_reference
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentReference]
      def retrieve(id, opts = {})
        req = {
          method: :get,
          path: "/api/payment_references/#{id}",
          model: ModernTreasury::Models::PaymentReference
        }
        @client.request(req, opts)
      end

      # list payment_references
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :after_cursor
      #   @option params [Integer, nil] :per_page
      #   @option params [String, nil] :reference_number The actual reference number assigned by the bank.
      #   @option params [String, nil] :referenceable_id The id of the referenceable to search for. Must be accompanied by the
      #     referenceable_type or will return an error.
      #   @option params [Symbol, ModernTreasury::Models::PaymentReferenceListParams::ReferenceableType, nil] :referenceable_type One of the referenceable types. This must be accompanied by the id of the
      #     referenceable or will return an error.
      #
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentReference>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/api/payment_references",
          query: params,
          page: ModernTreasury::Page,
          model: ModernTreasury::Models::PaymentReference
        }
        @client.request(req, opts)
      end

      # get payment_reference
      #
      # @param id [String] id
      # @param opts [Hash{Symbol => Object}, ModernTreasury::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentReference]
      def retireve(id, opts = {})
        req = {
          method: :get,
          path: "/api/payment_references/#{id}",
          model: ModernTreasury::Models::PaymentReference
        }
        @client.request(req, opts)
      end
    end
  end
end
