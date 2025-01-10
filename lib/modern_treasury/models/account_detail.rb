# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    #
    # ```ruby
    # account_detail => {
    #   id: String,
    #   account_number_safe: String,
    #   account_number_type: ModernTreasury::Models::AccountDetail::AccountNumberType,
    #   created_at: Time,
    #   discarded_at: Time,
    #   **_
    # }
    # ```
    class AccountDetail < ModernTreasury::BaseModel
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
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountDetail::AccountNumberType]
      required :account_number_type, enum: -> { ModernTreasury::Models::AccountDetail::AccountNumberType }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

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
      #   @return [String]
      optional :account_number, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param account_number_safe [String] The last 4 digits of the account_number.
      #   #
      #   # @param account_number_type [String] One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   #   account number is in a generic format.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String]
      #   #
      #   # @param updated_at [String]
      #   #
      #   # @param account_number [String] The account number for the bank account.
      #   #
      #   def initialize(
      #     id:,
      #     account_number_safe:,
      #     account_number_type:,
      #     created_at:,
      #     discarded_at:,
      #     live_mode:,
      #     object:,
      #     updated_at:,
      #     account_number: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
      #
      # @example
      #
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
