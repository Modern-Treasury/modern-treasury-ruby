# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportRetrieveParams < ModernTreasury::BaseModel
        # @!attribute internal_account_id
        #   @return [String]
        required :internal_account_id, String
      end
    end
  end
end
