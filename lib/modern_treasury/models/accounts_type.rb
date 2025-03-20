# frozen_string_literal: true

module ModernTreasury
  module Models
    module AccountsType
      extend ModernTreasury::Enum

      EXTERNAL_ACCOUNTS = :external_accounts
      INTERNAL_ACCOUNTS = :internal_accounts

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end
