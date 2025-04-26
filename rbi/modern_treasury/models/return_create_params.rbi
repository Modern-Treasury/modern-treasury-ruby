# typed: strong

module ModernTreasury
  module Models
    class ReturnCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # The ID of the object being returned or `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :returnable_id

      # The type of object being returned. Currently, this may only be
      # incoming_payment_detail.
      sig { returns(ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol) }
      attr_accessor :returnable_type

      # Some returns may include additional information from the bank. In these cases,
      # this string will be present.
      sig { returns(T.nilable(String)) }
      attr_accessor :additional_information

      # The return code. For ACH returns, this is the required ACH return code.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol)) }
      attr_accessor :code

      # The raw data from the return file that we get from the bank.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :data

      # If the return code is `R14` or `R15` this is the date the deceased counterparty
      # passed away.
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_death

      # An optional description of the reason for the return. This is for internal usage
      # and will not be transmitted to the bank.”
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          returnable_id: T.nilable(String),
          returnable_type: ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol,
          additional_information: T.nilable(String),
          code: T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol),
          data: T.nilable(T.anything),
          date_of_death: T.nilable(Date),
          reason: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The ID of the object being returned or `null`.
        returnable_id:,
        # The type of object being returned. Currently, this may only be
        # incoming_payment_detail.
        returnable_type:,
        # Some returns may include additional information from the bank. In these cases,
        # this string will be present.
        additional_information: nil,
        # The return code. For ACH returns, this is the required ACH return code.
        code: nil,
        # The raw data from the return file that we get from the bank.
        data: nil,
        # If the return code is `R14` or `R15` this is the date the deceased counterparty
        # passed away.
        date_of_death: nil,
        # An optional description of the reason for the return. This is for internal usage
        # and will not be transmitted to the bank.”
        reason: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              returnable_id: T.nilable(String),
              returnable_type: ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol,
              additional_information: T.nilable(String),
              code: T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol),
              data: T.nilable(T.anything),
              date_of_death: T.nilable(Date),
              reason: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end

      # The type of object being returned. Currently, this may only be
      # incoming_payment_detail.
      module ReturnableType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCOMING_PAYMENT_DETAIL =
          T.let(:incoming_payment_detail, ModernTreasury::Models::ReturnCreateParams::ReturnableType::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ReturnCreateParams::ReturnableType::TaggedSymbol]) }
        def self.values; end
      end

      # The return code. For ACH returns, this is the required ACH return code.
      module Code
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnCreateParams::Code) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CODE_901 = T.let(:"901", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_902 = T.let(:"902", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_903 = T.let(:"903", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_904 = T.let(:"904", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_905 = T.let(:"905", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_907 = T.let(:"907", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_908 = T.let(:"908", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_909 = T.let(:"909", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_910 = T.let(:"910", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_911 = T.let(:"911", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_912 = T.let(:"912", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CODE_914 = T.let(:"914", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C01 = T.let(:C01, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C02 = T.let(:C02, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C03 = T.let(:C03, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C05 = T.let(:C05, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C06 = T.let(:C06, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C07 = T.let(:C07, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C08 = T.let(:C08, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C09 = T.let(:C09, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C13 = T.let(:C13, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        C14 = T.let(:C14, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R01 = T.let(:R01, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R02 = T.let(:R02, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R03 = T.let(:R03, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R04 = T.let(:R04, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R05 = T.let(:R05, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R06 = T.let(:R06, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R07 = T.let(:R07, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R08 = T.let(:R08, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R09 = T.let(:R09, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R10 = T.let(:R10, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R11 = T.let(:R11, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R12 = T.let(:R12, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R14 = T.let(:R14, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R15 = T.let(:R15, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R16 = T.let(:R16, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R17 = T.let(:R17, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R20 = T.let(:R20, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R21 = T.let(:R21, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R22 = T.let(:R22, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R23 = T.let(:R23, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R24 = T.let(:R24, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R29 = T.let(:R29, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R31 = T.let(:R31, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R33 = T.let(:R33, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R37 = T.let(:R37, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R38 = T.let(:R38, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R39 = T.let(:R39, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R51 = T.let(:R51, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R52 = T.let(:R52, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        R53 = T.let(:R53, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        CURRENCYCLOUD = T.let(:currencycloud, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)

        sig { override.returns(T::Array[ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
