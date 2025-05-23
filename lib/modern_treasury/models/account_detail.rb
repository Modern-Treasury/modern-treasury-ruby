# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountDetails#create
    class AccountDetail < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_number_safe
      #   The last 4 digits of the account_number.
      #
      #   @return [String]
      required :account_number_safe, String

      # @!attribute account_number_type
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetail::AccountNumberType]
      required :account_number_type, enum: -> { ModernTreasury::AccountDetail::AccountNumberType }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute account_number
      #   The account number for the bank account.
      #
      #   @return [String, nil]
      optional :account_number, String

      # @!method initialize(id:, account_number_safe:, account_number_type:, created_at:, discarded_at:, live_mode:, object:, updated_at:, account_number: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::AccountDetail} for more details.
      #
      #   @param id [String]
      #
      #   @param account_number_safe [String] The last 4 digits of the account_number.
      #
      #   @param account_number_type [Symbol, ModernTreasury::Models::AccountDetail::AccountNumberType] One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank ac
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]
      #
      #   @param account_number [String] The account number for the bank account.

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      # account number is in a generic format.
      #
      # @see ModernTreasury::Models::AccountDetail#account_number_type
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
