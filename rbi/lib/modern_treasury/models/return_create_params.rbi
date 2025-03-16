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
      sig { returns(Symbol) }
      def returnable_type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(T.nilable(Symbol)) }
      def code
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
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
          returnable_type: Symbol,
          additional_information: T.nilable(String),
          code: T.nilable(Symbol),
          date_of_death: T.nilable(Date),
          reason: T.nilable(String),
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
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

      # The type of object being returned. Currently, this may only be
      #   incoming_payment_detail.
      class ReturnableType < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail
      end

      # The return code. For ACH returns, this is the required ACH return code.
      class Code < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        NUMBER_901 = :"901"
        NUMBER_902 = :"902"
        NUMBER_903 = :"903"
        NUMBER_904 = :"904"
        NUMBER_905 = :"905"
        NUMBER_907 = :"907"
        NUMBER_908 = :"908"
        NUMBER_909 = :"909"
        NUMBER_910 = :"910"
        NUMBER_911 = :"911"
        NUMBER_912 = :"912"
        NUMBER_914 = :"914"
        C01 = :C01
        C02 = :C02
        C03 = :C03
        C05 = :C05
        C06 = :C06
        C07 = :C07
        C08 = :C08
        C09 = :C09
        C13 = :C13
        C14 = :C14
        R01 = :R01
        R02 = :R02
        R03 = :R03
        R04 = :R04
        R05 = :R05
        R06 = :R06
        R07 = :R07
        R08 = :R08
        R09 = :R09
        R10 = :R10
        R11 = :R11
        R12 = :R12
        R14 = :R14
        R15 = :R15
        R16 = :R16
        R17 = :R17
        R20 = :R20
        R21 = :R21
        R22 = :R22
        R23 = :R23
        R24 = :R24
        R29 = :R29
        R31 = :R31
        R33 = :R33
        R37 = :R37
        R38 = :R38
        R39 = :R39
        R51 = :R51
        R52 = :R52
        R53 = :R53
        CURRENCYCLOUD = :currencycloud
      end
    end
  end
end
