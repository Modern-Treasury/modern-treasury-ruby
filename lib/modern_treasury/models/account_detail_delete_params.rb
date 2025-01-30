# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailDeleteParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

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

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case accounts_type
      # in :external_accounts
      #   # ...
      # end
      # ```
      class AccountsType < ModernTreasury::Enum
        EXTERNAL_ACCOUNTS = :external_accounts

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
