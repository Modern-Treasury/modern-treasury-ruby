# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailCreateParams < ModernTreasury::BaseModel
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
      #   # @param accounts_type [String]
      #   # @param account_number [String]
      #   # @param account_number_type [String]
      #   #
      #   def initialize(accounts_type:, account_number:, account_number_type: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

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
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      #
      # @example
      # ```ruby
      # case account_number_type
      # in :au_number
      #   # ...
      # in :clabe
      #   # ...
      # in :hk_number
      #   # ...
      # in :iban
      #   # ...
      # in :id_number
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class AccountNumberType < ModernTreasury::Enum
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
      end
    end
  end
end
