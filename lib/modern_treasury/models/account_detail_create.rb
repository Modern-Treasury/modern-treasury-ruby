# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailCreate < ModernTreasury::Internal::Type::BaseModel
      # @!attribute account_number
      #   The account number for the bank account.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute account_number_type
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreate::AccountNumberType, nil]
      optional :account_number_type, enum: -> { ModernTreasury::AccountDetailCreate::AccountNumberType }

      # @!method initialize(account_number:, account_number_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::AccountDetailCreate} for more details.
      #
      #   @param account_number [String] The account number for the bank account.
      #
      #   @param account_number_type [Symbol, ModernTreasury::Models::AccountDetailCreate::AccountNumberType] One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank ac

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      #
      # @see ModernTreasury::Models::AccountDetailCreate#account_number_type
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        AU_NUMBER = :au_number
        BASE_ADDRESS = :base_address
        CLABE = :clabe
        ETHEREUM_ADDRESS = :ethereum_address
        HK_NUMBER = :hk_number
        IBAN = :iban
        ID_NUMBER = :id_number
        NZ_NUMBER = :nz_number
        OTHER = :other
        PAN = :pan
        POLYGON_ADDRESS = :polygon_address
        SG_NUMBER = :sg_number
        SOLANA_ADDRESS = :solana_address
        WALLET_ADDRESS = :wallet_address

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
