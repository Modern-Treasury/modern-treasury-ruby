# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Invoices#add_payment_order
    class InvoiceAddPaymentOrderParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(id:, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
