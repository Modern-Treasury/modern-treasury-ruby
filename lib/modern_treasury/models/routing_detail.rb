# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingDetail < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] bank_address
      #   @return [ModernTreasury::Models::RoutingDetail::BankAddress]
      required :bank_address, -> { ModernTreasury::Models::RoutingDetail::BankAddress }

      # @!attribute [rw] bank_name
      #   The name of the bank.
      #   @return [String]
      required :bank_name, String

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] discarded_at
      #   @return [String]
      required :discarded_at, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      required :object, String

      # @!attribute [rw] payment_type
      #   If the routing detail is to be used for a specific payment type this field will be populated, otherwise null.
      #   @return [Symbol]
      required :payment_type,
               ModernTreasury::Enum.new(
                 :ach,
                 :au_becs,
                 :bacs,
                 :book,
                 :card,
                 :chats,
                 :check,
                 :cross_border,
                 :dk_nets,
                 :eft,
                 :hu_ics,
                 :interac,
                 :masav,
                 :mx_ccen,
                 :neft,
                 :nics,
                 :nz_becs,
                 :pl_elixir,
                 :provxchange,
                 :ro_sent,
                 :rtp,
                 :se_bankgirot,
                 :sen,
                 :sepa,
                 :sg_giro,
                 :sic,
                 :signet,
                 :sknbi,
                 :wire,
                 :zengin
               )

      # @!attribute [rw] routing_number
      #   The routing number of the bank.
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] routing_number_type
      #   The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details.
      #   @return [Symbol]
      required :routing_number_type,
               ModernTreasury::Enum.new(
                 :aba,
                 :au_bsb,
                 :br_codigo,
                 :ca_cpa,
                 :chips,
                 :cnaps,
                 :dk_interbank_clearing_code,
                 :gb_sort_code,
                 :hk_interbank_clearing_code,
                 :hu_interbank_clearing_code,
                 :id_sknbi_code,
                 :in_ifsc,
                 :jp_zengin_code,
                 :mx_bank_identifier,
                 :my_branch_code,
                 :nz_national_clearing_code,
                 :pl_national_clearing_code,
                 :se_bankgiro_clearing_code,
                 :swift
               )

      # @!attribute [rw] updated_at
      #   @return [String]
      required :updated_at, String

      class BankAddress < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        required :country, String

        # @!attribute [rw] created_at
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] line1
        #   @return [String]
        required :line1, String

        # @!attribute [rw] line2
        #   @return [String]
        required :line2, String

        # @!attribute [rw] live_mode
        #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
        #   @return [Boolean]
        required :live_mode, ModernTreasury::BooleanModel

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        required :locality, String

        # @!attribute [rw] object
        #   @return [String]
        required :object, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        required :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        required :region, String

        # @!attribute [rw] updated_at
        #   @return [String]
        required :updated_at, String
      end
    end
  end
end
