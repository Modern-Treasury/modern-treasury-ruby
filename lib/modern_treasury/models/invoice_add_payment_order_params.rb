# frozen_string_literal: true

module ModernTreasury
  module Models
    class InvoiceAddPaymentOrderParams < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String
    end
  end
end
