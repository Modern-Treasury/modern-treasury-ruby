# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailRetrieveParams < ModernTreasury::BaseModel
      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountsType }

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String
    end
  end
end
