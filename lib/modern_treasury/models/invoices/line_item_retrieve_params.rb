# frozen_string_literal: true

module ModernTreasury
  module Models
    module Invoices
      class LineItemRetrieveParams < ModernTreasury::BaseModel
        # @!attribute invoice_id
        #   @return [String]
        required :invoice_id, String
      end
    end
  end
end
