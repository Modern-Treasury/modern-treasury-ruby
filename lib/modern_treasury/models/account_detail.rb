# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountDetail < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_number_safe
      #   The last 4 digits of the account_number.
      #   @return [String]
      required :account_number_safe, String

      # @!attribute [rw] account_number_type
      #   One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank account number is in a generic format.
      #   @return [Symbol, ModernTreasury::Models::AccountDetail::AccountNumberType]
      required :account_number_type, enum: -> { ModernTreasury::Models::AccountDetail::AccountNumberType }

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!attribute [rw] account_number
      #   The account number for the bank account.
      #   @return [String]
      optional :account_number, String

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

      # @!parse
      #   # Create a new instance of AccountDetail from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :account_number_safe The last 4 digits of the account_number.
      #   #   @option data [String] :account_number_type One of `iban`, `clabe`, `wallet_address`, or `other`. Use `other` if the bank
      #   #     account number is in a generic format.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [String] :updated_at
      #   #   @option data [String, nil] :account_number The account number for the bank account.
      #   def initialize(data = {}) = super
    end
  end
end
