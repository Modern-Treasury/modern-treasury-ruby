# frozen_string_literal: true

module ModernTreasury
  module Models
    module AccountsType
      extend ModernTreasury::Internal::Type::Enum

      EXTERNAL_ACCOUNTS = :external_accounts
      INTERNAL_ACCOUNTS = :internal_accounts

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
