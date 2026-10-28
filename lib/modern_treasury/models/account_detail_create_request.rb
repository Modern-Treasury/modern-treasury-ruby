# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetailCreateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute account_number
      #   The account number for the bank account.
      #
      #   @return [String]
      required :account_number, String

      # @!attribute account_number_type
      #   The type of the account number. For wallet addresses, use the chain-specific
      #   type (e.g. `ethereum_address`). Use `other` if the account number is in a
      #   generic format.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetailCreateRequest::AccountNumberType, nil]
      optional :account_number_type, enum: -> { ModernTreasury::AccountDetailCreateRequest::AccountNumberType }

      # @!method initialize(account_number:, account_number_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::AccountDetailCreateRequest} for more details.
      #
      #   @param account_number [String] The account number for the bank account.
      #
      #   @param account_number_type [Symbol, ModernTreasury::Models::AccountDetailCreateRequest::AccountNumberType] The type of the account number. For wallet addresses, use the chain-specific typ

      # The type of the account number. For wallet addresses, use the chain-specific
      # type (e.g. `ethereum_address`). Use `other` if the account number is in a
      # generic format.
      #
      # @see ModernTreasury::Models::AccountDetailCreateRequest#account_number_type
      module AccountNumberType
        extend ModernTreasury::Internal::Type::Enum

        ARBITRUM_ADDRESS = :arbitrum_address
        AU_NUMBER = :au_number
        AVALANCHE_ADDRESS = :avalanche_address
        BASE_ADDRESS = :base_address
        CARD_TOKEN = :card_token
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
