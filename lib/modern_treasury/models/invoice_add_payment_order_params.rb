# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceAddPaymentOrderParams < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String
    end
  end
end
