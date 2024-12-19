# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class LineItemRetrieveParams < ModernTreasury::BaseModel
        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!parse
        #   # @param invoice_id [String]
        #   #
        #   def initialize(invoice_id:, **) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
