# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute counterparty_id
      #   Required.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute payment_types
      #
      #   @return [Array<String>]
      required :payment_types, ModernTreasury::ArrayOf[String]

      # @!attribute [r] receiving_countries
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>]
      optional :receiving_countries,
               -> {
                 ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry]
               }

      # @!parse
      #   # @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>]
      #   attr_writer :receiving_countries

      # @!parse
      #   # @param counterparty_id [String]
      #   # @param payment_types [Array<String>]
      #   # @param receiving_countries [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(counterparty_id:, payment_types:, receiving_countries: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # Optional. Array of 3-digit ISO country codes.
      #
      # @example
      # ```ruby
      # case receiving_country
      # in :USA
      #   # ...
      # in :AUS
      #   # ...
      # in :BEL
      #   # ...
      # in :CAN
      #   # ...
      # in :CHL
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class ReceivingCountry < ModernTreasury::Enum
        USA = :USA
        AUS = :AUS
        BEL = :BEL
        CAN = :CAN
        CHL = :CHL
        CHN = :CHN
        COL = :COL
        FRA = :FRA
        DEU = :DEU
        HKG = :HKG
        IND = :IND
        IRL = :IRL
        ITA = :ITA
        MEX = :MEX
        NLD = :NLD
        PER = :PER
        ESP = :ESP
        GBR = :GBR

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
