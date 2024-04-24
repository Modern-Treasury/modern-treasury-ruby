# frozen_string_literal: true

module ModernTreasury
  module Resources
    class PaymentReferences
      def initialize(client:)
        @client = client
      end

      # get payment_reference
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentReference]
      def retrieve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/payment_references/#{id}"
        req[:model] = ModernTreasury::Models::PaymentReference
        @client.request(req, opts)
      end

      # list payment_references
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :after_cursor
      # @option params [Integer] :per_page
      # @option params [String] :reference_number The actual reference number assigned by the bank.
      # @option params [String] :referenceable_id The id of the referenceable to search for. Must be accompanied by the
      #   referenceable_type or will return an error.
      # @option params [Symbol] :referenceable_type One of the referenceable types. This must be accompanied by the id of the
      #   referenceable or will return an error.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Page<ModernTreasury::Models::PaymentReference>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/payment_references"
        req[:query] = params
        req[:page] = ModernTreasury::Page
        req[:model] = ModernTreasury::Models::PaymentReference
        @client.request(req, opts)
      end

      # get payment_reference
      #
      # @param id [String] id
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [ModernTreasury::Models::PaymentReference]
      def retireve(id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/api/payment_references/#{id}"
        req[:model] = ModernTreasury::Models::PaymentReference
        @client.request(req, opts)
      end
    end
  end
end
