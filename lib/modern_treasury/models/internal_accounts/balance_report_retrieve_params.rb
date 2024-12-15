# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportRetrieveParams < ModernTreasury::BaseModel
        # @!attribute internal_account_id
        #
        #   @return [String]
        required :internal_account_id, String

        # @!parse
        #   # @param internal_account_id [String]
        #   #
        #   def initialize(internal_account_id:) = super

        # def initialize: (Hash | ModernTreasury::BaseModel) -> void
      end
    end
  end
end
