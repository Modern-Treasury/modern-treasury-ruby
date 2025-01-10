# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #   Required.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute payment_types
      #
      #   @return [Array<String>]
      required :payment_types, ModernTreasury::ArrayOf[String]

      # @!attribute receiving_countries
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>]
      optional :receiving_countries,
               -> {
                 ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry]
               }

      # @!parse
      #   # @param counterparty_id [String] Required.
      #   #
      #   # @param payment_types [Array<String>]
      #   #
      #   # @param receiving_countries [Array<String>]
      #   #
      #   def initialize(counterparty_id:, payment_types:, receiving_countries: nil, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # Optional. Array of 3-digit ISO country codes.
      #
      # @example
      #
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
      end
    end
  end
end
