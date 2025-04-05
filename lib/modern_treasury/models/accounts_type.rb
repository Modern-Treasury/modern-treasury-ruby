# frozen_string_literal: true

module ModernTreasury
  module Models
    module AccountsType
      extend ModernTreasury::Internal::Type::Enum

      EXTERNAL_ACCOUNTS = :external_accounts
      INTERNAL_ACCOUNTS = :internal_accounts

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
