# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountDetails#create
    class AccountDetailCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute accounts_type
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountDetailCreateParams::AccountsType }

      # @!attribute account_number
      #   The account number for the bank account.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute [r] account_number_type
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #     account number is in a generic format.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType, nil]
      optional :account_number_type,
               enum: -> { ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType]
      #   attr_writer :account_number_type

      # @!parse
      #   # @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType]
      #   # @param account_number [String]
      #   # @param account_number_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(accounts_type:, account_number:, account_number_type: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      module AccountsType
        extend ModernTreasury::Enum

        EXTERNAL_ACCOUNTS = :external_accounts

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      module AccountNumberType
        extend ModernTreasury::Enum

        AU_NUMBER = :au_number
        CLABE = :clabe
        HK_NUMBER = :hk_number
        IBAN = :iban
        ID_NUMBER = :id_number
        NZ_NUMBER = :nz_number
        OTHER = :other
        PAN = :pan
        SG_NUMBER = :sg_number
        WALLET_ADDRESS = :wallet_address

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
