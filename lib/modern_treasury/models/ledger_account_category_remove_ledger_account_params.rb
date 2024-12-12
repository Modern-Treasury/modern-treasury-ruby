# frozen_string_literal: true

module ModernTreasury
  module Models
    class LedgerAccountCategoryRemoveLedgerAccountParams < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String
    end
  end
end
