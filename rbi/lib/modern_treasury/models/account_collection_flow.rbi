# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlow < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :counterparty_id

      sig { returns(T::Array[Symbol]) }
      attr_accessor :payment_types

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :client_token

      sig { params(client_token: String).void }
      attr_writer :client_token

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :live_mode

      sig { params(live_mode: T::Boolean).void }
      attr_writer :live_mode

      sig { returns(T.nilable(String)) }
      attr_reader :object

      sig { params(object: String).void }
      attr_writer :object

      sig { returns(T.nilable(T::Array[Symbol])) }
      attr_reader :receiving_countries

      sig { params(receiving_countries: T::Array[Symbol]).void }
      attr_writer :receiving_countries

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

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
        ).void
      end
      def initialize(
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
        override.returns(
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

      class PaymentType < ModernTreasury::Enum
        abstract!

        ACH = :ach
        WIRE = :wire

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < ModernTreasury::Enum
        abstract!

        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
