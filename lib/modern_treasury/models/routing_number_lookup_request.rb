# frozen_string_literal: true

module ModernTreasury
  module Models
    class RoutingNumberLookupRequest < BaseModel
      # @!attribute [rw] bank_address
      #   The address of the bank.
      #   @return [ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress]
      optional :bank_address, -> { ModernTreasury::Models::RoutingNumberLookupRequest::BankAddress }

      # @!attribute [rw] bank_name
      #   The name of the bank.
      #   @return [String]
      optional :bank_name, String

      # @!attribute [rw] routing_number
      #   The routing number of the bank.
      #   @return [String]
      optional :routing_number, String

      # @!attribute [rw] routing_number_type
      #   The type of routing number. See https://docs.moderntreasury.com/platform/reference/routing-detail-object for more details. In sandbox mode we currently only support `aba` and `swift` with routing numbers '123456789' and 'GRINUST0XXX' respectively.
      #   @return [Symbol]
      optional :routing_number_type,
               ModernTreasury::Enum.new(
                 :aba,
                 :au_bsb,
                 :ca_cpa,
                 :gb_sort_code,
                 :in_ifsc,
                 :nz_national_clearing_code,
                 :se_bankgiro_clearing_code,
                 :swift
               )

      # @!attribute [rw] sanctions
      #   An object containing key-value pairs, each with a sanctions list as the key and a boolean value representing whether the bank is on that particular sanctions list. Currently, this includes eu_con, uk_hmt, us_ofac, and un sanctions lists.
      #   @return [Hash]
      optional :sanctions, Hash

      # @!attribute [rw] supported_payment_types
      #   An array of payment types that are supported for this routing number. This can include `ach`, `wire`, `rtp`, `sepa`, `bacs`, `au_becs` currently.
      #   @return [Array<Symbol>]
      optional :supported_payment_types,
               ModernTreasury::ArrayOf.new(
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
               )

      class BankAddress < BaseModel
        # @!attribute [rw] country
        #   Country code conforms to [ISO 3166-1 alpha-2]
        #   @return [String]
        optional :country, String

        # @!attribute [rw] line1
        #   @return [String]
        optional :line1, String

        # @!attribute [rw] line2
        #   @return [String]
        optional :line2, String

        # @!attribute [rw] locality
        #   Locality or City.
        #   @return [String]
        optional :locality, String

        # @!attribute [rw] postal_code
        #   The postal code of the address.
        #   @return [String]
        optional :postal_code, String

        # @!attribute [rw] region
        #   Region or State.
        #   @return [String]
        optional :region, String
      end
    end
  end
end
