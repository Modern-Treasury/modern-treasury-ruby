# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingDetailDeleteParams < ModernTreasury::BaseModel
      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::RoutingDetailDeleteParams::AccountsType }

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!parse
      #   # @param accounts_type [String]
      #   # @param account_id [String]
      #   #
      #   def initialize(accounts_type:, account_id:, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case accounts_type
      # in :external_accounts
      #   # ...
      # end
      # ```
      class AccountsType < ModernTreasury::Enum
        EXTERNAL_ACCOUNTS = :external_accounts

        finalize!
      end
    end
  end
end
