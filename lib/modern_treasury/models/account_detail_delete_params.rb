# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountDetails#delete
    class AccountDetailDeleteParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountDetailDeleteParams::AccountsType }

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!parse
      #   # @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailDeleteParams::AccountsType]
      #   # @param account_id [String]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(accounts_type:, account_id:, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        EXTERNAL_ACCOUNTS = :external_accounts

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
