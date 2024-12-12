# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::BaseModel
      # @!attribute [rw] counterparty_id
      #   Required.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] payment_types
      #   @return [Array<String>]
      required :payment_types, ModernTreasury::ArrayOf.new(String)

      # @!attribute [rw] receiving_countries
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>]
      optional :receiving_countries,
               ModernTreasury::ArrayOf.new(
                 enum: -> {
                   ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry
                 }
               )

      # Optional. Array of 3-digit ISO country codes.
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
      end
    end
  end
end
