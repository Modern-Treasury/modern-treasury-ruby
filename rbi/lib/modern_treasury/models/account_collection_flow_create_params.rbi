# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Required.
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

      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol])
        )
      end
      def receiving_countries
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol])
          .returns(T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol])
      end
      def receiving_countries=(_)
      end

      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol],
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(counterparty_id:, payment_types:, receiving_countries: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              counterparty_id: String,
              payment_types: T::Array[String],
              receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Optional. Array of 3-digit ISO country codes.
      module ReceivingCountry
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol) }

        USA = T.let(:USA, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        AUS = T.let(:AUS, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        BEL = T.let(:BEL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        CAN = T.let(:CAN, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        CHL = T.let(:CHL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        CHN = T.let(:CHN, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        COL = T.let(:COL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        FRA = T.let(:FRA, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        DEU = T.let(:DEU, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        HKG = T.let(:HKG, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        IND = T.let(:IND, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        IRL = T.let(:IRL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        ITA = T.let(:ITA, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        MEX = T.let(:MEX, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        NLD = T.let(:NLD, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        PER = T.let(:PER, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        ESP = T.let(:ESP, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
        GBR = T.let(:GBR, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol)
      end
    end
  end
end
