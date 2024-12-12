# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingDetailDeleteParams < ModernTreasury::BaseModel
      # @!attribute [rw] accounts_type
      #   @return [Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType }

      # @!attribute [rw] account_id
      #   @return [String]
      required :account_id, String

      class AccountsType < ModernTreasury::Enum
        EXTERNAL_ACCOUNTS = :external_accounts
      end
    end
  end
end
