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

      # @!attribute account_number_type
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType]
      optional :account_number_type,
               enum: -> { ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType }

      # @!parse
      #   # @param accounts_type [String]
      #   #
      #   # @param account_number [String] The account number for the bank account.
      #   #
      #   # @param account_number_type [String, nil] One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   #   account number is in a generic format.
      #   #
      #   def initialize(accounts_type:, account_number:, account_number_type: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
      # in :external_accounts
      #   # ...
      # end
      # ```
      class AccountsType < ModernTreasury::Enum
        EXTERNAL_ACCOUNTS = :external_accounts
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
      #
      # @example
      #
      # ```ruby
      # case enum
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
      end
    end
  end
end
