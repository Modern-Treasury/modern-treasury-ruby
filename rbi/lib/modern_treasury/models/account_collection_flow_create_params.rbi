# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {counterparty_id: String, payment_types: T::Array[String], receiving_countries: T::Array[Symbol]},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(T::Array[String]) }
      attr_accessor :payment_types

      sig { returns(T.nilable(T::Array[Symbol])) }
      attr_reader :receiving_countries

      sig { params(receiving_countries: T::Array[Symbol]).void }
      attr_writer :receiving_countries

      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries: T::Array[Symbol],
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(counterparty_id:, payment_types:, receiving_countries: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::AccountCollectionFlowCreateParams::Shape) }
      def to_h; end

      class ReceivingCountry < ModernTreasury::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
