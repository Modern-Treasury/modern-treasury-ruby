# typed: strong

module ModernTreasury
  module Models
    class ReturnCreateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # The ID of the object being returned or `null`.
      sig { returns(T.nilable(String)) }
      def returnable_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def returnable_id=(_)
      end

      # The type of object being returned. Currently, this may only be
      #   incoming_payment_detail.
      sig { returns(ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol) }
      def returnable_type
      end

      sig do
        params(_: ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol)
          .returns(ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol)
      end
      def returnable_type=(_)
      end

      # Some returns may include additional information from the bank. In these cases,
      #   this string will be present.
      sig { returns(T.nilable(String)) }
      def additional_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def additional_information=(_)
      end

      # The return code. For ACH returns, this is the required ACH return code.
      sig { returns(T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol)) }
      def code
      end

      sig do
        params(_: T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol))
          .returns(T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol))
      end
      def code=(_)
      end

      # If the return code is `R14` or `R15` this is the date the deceased counterparty
      #   passed away.
      sig { returns(T.nilable(Date)) }
      def date_of_death
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def date_of_death=(_)
      end

      # An optional description of the reason for the return. This is for internal usage
      #   and will not be transmitted to the bank.”
      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      sig do
        params(
          returnable_id: T.nilable(String),
          returnable_type: ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol,
          additional_information: T.nilable(String),
          code: T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol),
          date_of_death: T.nilable(Date),
          reason: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
            {
              returnable_id: T.nilable(String),
              returnable_type: ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol,
              additional_information: T.nilable(String),
              code: T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol),
              date_of_death: T.nilable(Date),
              reason: T.nilable(String),
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The type of object being returned. Currently, this may only be
      #   incoming_payment_detail.
      module ReturnableType
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType::TaggedSymbol) }

        INCOMING_PAYMENT_DETAIL =
          T.let(:incoming_payment_detail, ModernTreasury::Models::ReturnCreateParams::ReturnableType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ReturnCreateParams::ReturnableType::TaggedSymbol]) }
          def values
          end
        end
      end

      # The return code. For ACH returns, this is the required ACH return code.
      module Code
        extend ModernTreasury::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::ReturnCreateParams::Code) }
        OrSymbol = T.type_alias { T.any(Symbol, ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol) }

        NUMBER_901 = T.let(:"901", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_902 = T.let(:"902", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_903 = T.let(:"903", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_904 = T.let(:"904", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_905 = T.let(:"905", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_907 = T.let(:"907", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_908 = T.let(:"908", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_909 = T.let(:"909", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_910 = T.let(:"910", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_911 = T.let(:"911", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_912 = T.let(:"912", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
        NUMBER_914 = T.let(:"914", ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol)
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

        class << self
          sig { override.returns(T::Array[ModernTreasury::Models::ReturnCreateParams::Code::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
