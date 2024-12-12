# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailDeleteParams < ModernTreasury::BaseModel
      # @!attribute [rw] accounts_type
      #   @return [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountDetailDeleteParams::AccountsType }

      # @!attribute [rw] account_id
      #   @return [String]
      required :account_id, String

      class AccountsType < ModernTreasury::Enum
        EXTERNAL_ACCOUNTS = :external_accounts
      end
    end
  end
end
