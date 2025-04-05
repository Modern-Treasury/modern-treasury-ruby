# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlow < ModernTreasury::Internal::Type::BaseModel
      # The ID of a counterparty. An external account created with this flow will be
      #   associated with this counterparty.
      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol]) }
      attr_accessor :payment_types

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The client token of the account collection flow. This token can be used to embed
      #   account collection in your client-side application.
      sig { returns(T.nilable(String)) }
      attr_reader :client_token

      sig { params(client_token: String).void }
      attr_writer :client_token

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # If present, the ID of the external account created using this flow.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :live_mode

      sig { params(live_mode: T::Boolean).void }
      attr_writer :live_mode

      sig { returns(T.nilable(String)) }
      attr_reader :object

      sig { params(object: String).void }
      attr_writer :object

      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol])
        )
      end
      attr_reader :receiving_countries

      sig do
        params(
          receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::OrSymbol]
        )
          .void
      end
      attr_writer :receiving_countries

      # The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      sig { returns(T.nilable(ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: ModernTreasury::Models::AccountCollectionFlow::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          counterparty_id: String,
          payment_types: T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::OrSymbol],
          id: String,
          client_token: String,
          created_at: Time,
          external_account_id: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::OrSymbol],
          status: ModernTreasury::Models::AccountCollectionFlow::Status::OrSymbol,
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        counterparty_id:,
        payment_types:,
        id: nil,
        client_token: nil,
        created_at: nil,
        external_account_id: nil,
        live_mode: nil,
        object: nil,
        receiving_countries: nil,
        status: nil,
        updated_at: nil
      )
      end

      sig do
        override
          .returns(
            {
              counterparty_id: String,
              payment_types: T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol],
              id: String,
              client_token: String,
              created_at: Time,
              external_account_id: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              receiving_countries: T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol],
              status: ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # An account created with this flow will support payments of one of these types.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol]) }
        def self.values
        end
      end

      # An account created with this flow will support wires from the US to these
      #   countries.
      module ReceivingCountry
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol) }

        USA = T.let(:USA, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        AUS = T.let(:AUS, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        BEL = T.let(:BEL, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        CAN = T.let(:CAN, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        CHL = T.let(:CHL, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        CHN = T.let(:CHN, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        COL = T.let(:COL, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        FRA = T.let(:FRA, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        DEU = T.let(:DEU, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        HKG = T.let(:HKG, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        IND = T.let(:IND, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        IRL = T.let(:IRL, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        ITA = T.let(:ITA, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        MEX = T.let(:MEX, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        NLD = T.let(:NLD, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        PER = T.let(:PER, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        ESP = T.let(:ESP, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)
        GBR = T.let(:GBR, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol]) }
        def self.values
        end
      end

      # The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlow::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol) }

        CANCELLED = T.let(:cancelled, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
