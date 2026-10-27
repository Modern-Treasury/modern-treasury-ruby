# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateRequest < ModernTreasury::Internal::Type::BaseModel
      # @!attribute counterparty_id
      #   Required.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute payment_types
      #
      #   @return [Array<String>]
      required :payment_types, ModernTreasury::Internal::Type::ArrayOf[String]

      # @!attribute receiving_countries
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateRequest::ReceivingCountry>, nil]
      optional :receiving_countries,
               -> { ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry] }

      # @!method initialize(counterparty_id:, payment_types:, receiving_countries: nil)
      #   @param counterparty_id [String] Required.
      #
      #   @param payment_types [Array<String>]
      #
      #   @param receiving_countries [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateRequest::ReceivingCountry>]

      # Optional. Array of 3-digit ISO country codes.
      module ReceivingCountry
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
