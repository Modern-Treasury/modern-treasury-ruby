# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Required.
      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(T::Array[String]) }
      attr_accessor :payment_types

      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol])
        )
      end
      attr_reader :receiving_countries

      sig do
        params(
          receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol]
        )
          .void
      end
      attr_writer :receiving_countries

      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
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

        USA =
          T.let(:USA, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        AUS =
          T.let(:AUS, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        BEL =
          T.let(:BEL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        CAN =
          T.let(:CAN, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        CHL =
          T.let(:CHL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        CHN =
          T.let(:CHN, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        COL =
          T.let(:COL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        FRA =
          T.let(:FRA, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        DEU =
          T.let(:DEU, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        HKG =
          T.let(:HKG, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        IND =
          T.let(:IND, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        IRL =
          T.let(:IRL, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        ITA =
          T.let(:ITA, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        MEX =
          T.let(:MEX, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        NLD =
          T.let(:NLD, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        PER =
          T.let(:PER, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        ESP =
          T.let(:ESP, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)
        GBR =
          T.let(:GBR, ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol)

        sig do
          override
            .returns(
              T::Array[ModernTreasury::Models::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol]
            )
        end
        def self.values
        end
      end
    end
  end
end
