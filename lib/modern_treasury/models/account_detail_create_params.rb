# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountDetails#create
    class AccountDetailCreateParams < ModernTreasury::Models::AccountDetailCreate
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::AccountDetailCreateParams::AccountsType }

      # @!method initialize(accounts_type:, request_options: {})
      #   @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType]
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        EXTERNAL_ACCOUNTS = :external_accounts

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
