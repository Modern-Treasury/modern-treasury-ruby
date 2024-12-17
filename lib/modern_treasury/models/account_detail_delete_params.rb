# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailDeleteParams < ModernTreasury::BaseModel
      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountDetailDeleteParams::AccountsType }

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!parse
      #   # @param accounts_type [String]
      #   # @param account_id [String]
      #   #
      #   def initialize(accounts_type:, account_id:) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
      # in :external_accounts
      #   # ...
      # end
      # ```
      class AccountsType < ModernTreasury::Enum
        EXTERNAL_ACCOUNTS = :external_accounts
      end
    end
  end
end
