# frozen_string_literal: true

module ModernTreasury
  module Models
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
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #     account number is in a generic format.
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
      required :discarded_at, Time, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
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

      # @!attribute [r] account_number
      #   The account number for the bank account.
      #
      #   @return [String, nil]
      optional :account_number, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_number

      # @!parse
      #   # @param id [String]
      #   # @param account_number_safe [String]
      #   # @param account_number_type [Symbol, ModernTreasury::Models::AccountDetail::AccountNumberType]
      #   # @param created_at [Time]
      #   # @param discarded_at [Time, nil]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param updated_at [Time]
      #   # @param account_number [String]
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

      # One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   account number is in a generic format.
      #
      # @see ModernTreasury::Models::AccountDetail#account_number_type
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
