# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlow < ModernTreasury::BaseModel
      # The ID of a counterparty. An external account created with this flow will be
      #   associated with this counterparty.
      sig { returns(String) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      sig { returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol]) }
      def payment_types
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol])
          .returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol])
      end
      def payment_types=(_)
      end

      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The client token of the account collection flow. This token can be used to embed
      #   account collection in your client-side application.
      sig { returns(T.nilable(String)) }
      def client_token
      end

      sig { params(_: String).returns(String) }
      def client_token=(_)
      end

      sig { returns(T.nilable(Time)) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # If present, the ID of the external account created using this flow.
      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_account_id=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T.nilable(T::Boolean)) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(T.nilable(String)) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig do
        returns(
          T.nilable(T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol])
        )
      end
      def receiving_countries
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::OrSymbol])
          .returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::OrSymbol])
      end
      def receiving_countries=(_)
      end

      # The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      sig { returns(T.nilable(ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)) }
      def status
      end

      sig do
        params(_: ModernTreasury::Models::AccountCollectionFlow::Status::OrSymbol)
          .returns(ModernTreasury::Models::AccountCollectionFlow::Status::OrSymbol)
      end
      def status=(_)
      end

      sig { returns(T.nilable(Time)) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

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
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol) }

        ACH = T.let(:ach, ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol)
        WIRE = T.let(:wire, ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::PaymentType::TaggedSymbol]) }
          def values
          end
        end
      end

      # An account created with this flow will support wires from the US to these
      #   countries.
      module ReceivingCountry
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol) }

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

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry::TaggedSymbol]) }
          def values
          end
        end
      end

      # The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlow::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol) }

        CANCELLED = T.let(:cancelled, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)
        PENDING = T.let(:pending, ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::AccountCollectionFlow::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
