# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::AccountCollectionFlows#create
    class AccountCollectionFlowCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

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
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>, nil]
      optional :receiving_countries,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry]
               }

      # @!method initialize(counterparty_id:, payment_types:, receiving_countries: nil, request_options: {})
      #   @param counterparty_id [String] Required.
      #
      #   @param payment_types [Array<String>]
      #
      #   @param receiving_countries [Array<Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry>]
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

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
