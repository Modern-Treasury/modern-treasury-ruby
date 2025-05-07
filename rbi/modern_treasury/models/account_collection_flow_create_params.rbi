# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      # Required.
      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(T::Array[String]) }
      attr_accessor :payment_types

      sig do
        returns(
          T.nilable(
            T::Array[
              ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol
            ]
          )
        )
      end
      attr_reader :receiving_countries

      sig do
        params(
          receiving_countries:
            T::Array[
              ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol
            ]
        ).void
      end
      attr_writer :receiving_countries

      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[String],
          receiving_countries:
            T::Array[
              ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol
            ],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Required.
        counterparty_id:,
        payment_types:,
        receiving_countries: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            counterparty_id: String,
            payment_types: T::Array[String],
            receiving_countries:
              T::Array[
                ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::OrSymbol
              ],
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional. Array of 3-digit ISO country codes.
      module ReceivingCountry
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USA =
          T.let(
            :USA,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        AUS =
          T.let(
            :AUS,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        BEL =
          T.let(
            :BEL,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        CAN =
          T.let(
            :CAN,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        CHL =
          T.let(
            :CHL,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        CHN =
          T.let(
            :CHN,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        COL =
          T.let(
            :COL,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        FRA =
          T.let(
            :FRA,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        DEU =
          T.let(
            :DEU,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        HKG =
          T.let(
            :HKG,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        IND =
          T.let(
            :IND,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        IRL =
          T.let(
            :IRL,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        ITA =
          T.let(
            :ITA,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        MEX =
          T.let(
            :MEX,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        NLD =
          T.let(
            :NLD,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        PER =
          T.let(
            :PER,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        ESP =
          T.let(
            :ESP,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )
        GBR =
          T.let(
            :GBR,
            ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountCollectionFlowCreateParams::ReceivingCountry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
