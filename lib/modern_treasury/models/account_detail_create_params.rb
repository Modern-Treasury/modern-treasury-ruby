# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] accounts_type
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType]
      required :accounts_type, enum: -> { ModernTreasury::Models::AccountDetailCreateParams::AccountsType }

      # @!attribute [rw] account_number
      #   The account number for the bank account.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] account_number_type
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType]
      optional :account_number_type,
               enum: -> { ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType }

      class AccountsType < ModernTreasury::Enum
        EXTERNAL_ACCOUNTS = :external_accounts
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
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
      end
    end
  end
end
