# typed: strong

module ModernTreasury
  module Models
    class ReturnCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :returnable_id

      sig { returns(Symbol) }
      attr_accessor :returnable_type

      sig { returns(T.nilable(String)) }
      attr_accessor :additional_information

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :code

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_death

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          returnable_id: T.nilable(String),
          returnable_type: Symbol,
          additional_information: T.nilable(String),
          code: T.nilable(Symbol),
          date_of_death: T.nilable(Date),
          reason: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        returnable_id:,
        returnable_type:,
        additional_information: nil,
        code: nil,
        date_of_death: nil,
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            returnable_id: T.nilable(String),
            returnable_type: Symbol,
            additional_information: T.nilable(String),
            code: T.nilable(Symbol),
            date_of_death: T.nilable(Date),
            reason: T.nilable(String),
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ReturnableType < ModernTreasury::Enum
        abstract!

        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Code < ModernTreasury::Enum
        abstract!

        NUMBER_901 = T.let(:"901", T.nilable(Symbol))
        NUMBER_902 = T.let(:"902", T.nilable(Symbol))
        NUMBER_903 = T.let(:"903", T.nilable(Symbol))
        NUMBER_904 = T.let(:"904", T.nilable(Symbol))
        NUMBER_905 = T.let(:"905", T.nilable(Symbol))
        NUMBER_907 = T.let(:"907", T.nilable(Symbol))
        NUMBER_908 = T.let(:"908", T.nilable(Symbol))
        NUMBER_909 = T.let(:"909", T.nilable(Symbol))
        NUMBER_910 = T.let(:"910", T.nilable(Symbol))
        NUMBER_911 = T.let(:"911", T.nilable(Symbol))
        NUMBER_912 = T.let(:"912", T.nilable(Symbol))
        NUMBER_914 = T.let(:"914", T.nilable(Symbol))
        C01 = T.let(:C01, T.nilable(Symbol))
        C02 = T.let(:C02, T.nilable(Symbol))
        C03 = T.let(:C03, T.nilable(Symbol))
        C05 = T.let(:C05, T.nilable(Symbol))
        C06 = T.let(:C06, T.nilable(Symbol))
        C07 = T.let(:C07, T.nilable(Symbol))
        C08 = T.let(:C08, T.nilable(Symbol))
        C09 = T.let(:C09, T.nilable(Symbol))
        C13 = T.let(:C13, T.nilable(Symbol))
        C14 = T.let(:C14, T.nilable(Symbol))
        R01 = T.let(:R01, T.nilable(Symbol))
        R02 = T.let(:R02, T.nilable(Symbol))
        R03 = T.let(:R03, T.nilable(Symbol))
        R04 = T.let(:R04, T.nilable(Symbol))
        R05 = T.let(:R05, T.nilable(Symbol))
        R06 = T.let(:R06, T.nilable(Symbol))
        R07 = T.let(:R07, T.nilable(Symbol))
        R08 = T.let(:R08, T.nilable(Symbol))
        R09 = T.let(:R09, T.nilable(Symbol))
        R10 = T.let(:R10, T.nilable(Symbol))
        R11 = T.let(:R11, T.nilable(Symbol))
        R12 = T.let(:R12, T.nilable(Symbol))
        R14 = T.let(:R14, T.nilable(Symbol))
        R15 = T.let(:R15, T.nilable(Symbol))
        R16 = T.let(:R16, T.nilable(Symbol))
        R17 = T.let(:R17, T.nilable(Symbol))
        R20 = T.let(:R20, T.nilable(Symbol))
        R21 = T.let(:R21, T.nilable(Symbol))
        R22 = T.let(:R22, T.nilable(Symbol))
        R23 = T.let(:R23, T.nilable(Symbol))
        R24 = T.let(:R24, T.nilable(Symbol))
        R29 = T.let(:R29, T.nilable(Symbol))
        R31 = T.let(:R31, T.nilable(Symbol))
        R33 = T.let(:R33, T.nilable(Symbol))
        R37 = T.let(:R37, T.nilable(Symbol))
        R38 = T.let(:R38, T.nilable(Symbol))
        R39 = T.let(:R39, T.nilable(Symbol))
        R51 = T.let(:R51, T.nilable(Symbol))
        R52 = T.let(:R52, T.nilable(Symbol))
        R53 = T.let(:R53, T.nilable(Symbol))
        CURRENCYCLOUD = T.let(:currencycloud, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
