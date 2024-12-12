# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportDeleteParams < ModernTreasury::BaseModel
        # @!attribute [rw] internal_account_id
        #   @return [String]
        required :internal_account_id, String
      end
    end
  end
end
