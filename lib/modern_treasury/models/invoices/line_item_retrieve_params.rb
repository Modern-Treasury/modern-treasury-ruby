# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      # @see ModernTreasury::Resources::Invoices::LineItems#retrieve
      class LineItemRetrieveParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!method initialize(invoice_id:, request_options: {})
        #   @param invoice_id [String]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
