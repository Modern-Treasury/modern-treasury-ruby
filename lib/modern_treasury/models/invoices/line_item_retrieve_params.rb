# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class LineItemRetrieveParams < ModernTreasury::BaseModel
        # @!parse
        #   extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!parse
        #   # @param invoice_id [String]
        #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(invoice_id:, request_options: {}, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
