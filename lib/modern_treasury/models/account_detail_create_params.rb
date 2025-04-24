# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountDetails#create
    class AccountDetailCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
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

      # @!attribute account_number_type
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType, nil]
      optional :account_number_type,
               enum: -> { ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType }

      # @!method initialize(accounts_type:, account_number:, account_number_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::AccountDetailCreateParams} for more details.
      #
      #   @param accounts_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountsType]
      #
      #   @param account_number [String] The account number for the bank account.
      #
      #   @param account_number_type [Symbol, ModernTreasury::Models::AccountDetailCreateParams::AccountNumberType] One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank ac
      #   ...
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module AccountsType
        extend ModernTreasury::Internal::Type::Enum

        EXTERNAL_ACCOUNTS = :external_accounts

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
