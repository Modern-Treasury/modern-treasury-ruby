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

      sig { returns(T::Array[Symbol]) }
      def payment_types
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
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

      sig { returns(T.nilable(T::Array[Symbol])) }
      def receiving_countries
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def receiving_countries=(_)
      end

      # The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          payment_types: T::Array[Symbol],
          id: String,
          client_token: String,
          created_at: Time,
          external_account_id: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          receiving_countries: T::Array[Symbol],
          status: Symbol,
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
              payment_types: T::Array[Symbol],
              id: String,
              client_token: String,
              created_at: Time,
              external_account_id: T.nilable(String),
              live_mode: T::Boolean,
              object: String,
              receiving_countries: T::Array[Symbol],
              status: Symbol,
              updated_at: Time
            }
          )
      end
      def to_hash
      end

      # An account created with this flow will support payments of one of these types.
      class PaymentType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH = :ach
        WIRE = :wire
      end

      # An account created with this flow will support wires from the US to these
      #   countries.
      class ReceivingCountry < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

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
      end

      # The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      class Status < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending
      end
    end
  end
end
