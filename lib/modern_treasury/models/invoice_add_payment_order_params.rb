# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Invoices#add_payment_order
    class InvoiceAddPaymentOrderParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute payment_order_id
      #
      #   @return [String]
      required :payment_order_id, String

      # @!method initialize(id:, payment_order_id:, request_options: {})
      #   @param id [String]
      #   @param payment_order_id [String]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
