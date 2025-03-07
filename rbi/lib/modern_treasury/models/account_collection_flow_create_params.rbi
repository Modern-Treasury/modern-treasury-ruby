# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(String) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      sig { returns(T::Array[String]) }
      def payment_types
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def payment_types=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def receiving_countries
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def receiving_countries=(_)
      end

      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries: T::Array[Symbol],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(counterparty_id:, payment_types:, receiving_countries: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              counterparty_id: String,
              payment_types: T::Array[String],
              receiving_countries: T::Array[Symbol],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
