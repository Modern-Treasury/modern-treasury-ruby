# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingDetailRetrieveParams < ModernTreasury::BaseModel
      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountsType }

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
    end
  end
end
