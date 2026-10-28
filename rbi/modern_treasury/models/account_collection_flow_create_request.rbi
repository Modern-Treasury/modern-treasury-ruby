# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowCreateRequest < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountCollectionFlowCreateRequest,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Required.
      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(T::Array[String]) }
      attr_accessor :payment_types

      sig do
        returns(
          T.nilable(
            T::Array[
              ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
            ]
          )
        )
      end
      attr_reader :receiving_countries

      sig do
        params(
          receiving_countries:
            T::Array[
              ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
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
              ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # Required.
        counterparty_id:,
        payment_types:,
        receiving_countries: nil
      )
      end

      sig do
        override.returns(
          {
            counterparty_id: String,
            payment_types: T::Array[String],
            receiving_countries:
              T::Array[
                ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
              ]
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
              ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USA =
          T.let(
            :USA,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        AUS =
          T.let(
            :AUS,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        BEL =
          T.let(
            :BEL,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        CAN =
          T.let(
            :CAN,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        CHL =
          T.let(
            :CHL,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        CHN =
          T.let(
            :CHN,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        COL =
          T.let(
            :COL,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        FRA =
          T.let(
            :FRA,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        DEU =
          T.let(
            :DEU,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        HKG =
          T.let(
            :HKG,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        IND =
          T.let(
            :IND,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        IRL =
          T.let(
            :IRL,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        ITA =
          T.let(
            :ITA,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        MEX =
          T.let(
            :MEX,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        NLD =
          T.let(
            :NLD,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        PER =
          T.let(
            :PER,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        ESP =
          T.let(
            :ESP,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )
        GBR =
          T.let(
            :GBR,
            ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
