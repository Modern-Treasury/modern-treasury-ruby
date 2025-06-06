# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountDetails#delete
    class AccountDetailDeleteParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::AccountDetailDeleteParams::AccountsType }

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!method initialize(accounts_type:, account_id:, request_options: {})
      #   @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      #   @param account_id [String]
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
