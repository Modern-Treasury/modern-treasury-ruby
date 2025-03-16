# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      #   Use `debit` when you need to charge a counterparty. This field helps us send a
      #   more tailored email to your counterparties."
      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # The URL you want your customer to visit upon filling out the form. By default,
      #   they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
      #   URL if set.
      sig { returns(T.nilable(String)) }
      def custom_redirect
      end

      sig { params(_: String).returns(String) }
      def custom_redirect=(_)
      end

      # The list of fields you want on the form. This field is optional and if it is not
      #   set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\"]. The full list of options is [\"name\",
      #   \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
      sig { returns(T.nilable(T::Array[Symbol])) }
      def fields
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def fields=(_)
      end

      # By default, Modern Treasury will send an email to your counterparty that
      #   includes a link to the form they must fill out. However, if you would like to
      #   send the counterparty the link, you can set this parameter to `false`. The JSON
      #   body will include the link to the secure Modern Treasury form.
      sig { returns(T.nilable(T::Boolean)) }
      def send_email
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def send_email=(_)
      end

      sig do
        params(
          direction: Symbol,
          custom_redirect: String,
          fields: T::Array[Symbol],
          send_email: T::Boolean,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              direction: Symbol,
              custom_redirect: String,
              fields: T::Array[Symbol],
              send_email: T::Boolean,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Field < ModernTreasury::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        NAME = :name
        NAME_ON_ACCOUNT = :nameOnAccount
        TAXPAYER_IDENTIFIER = :taxpayerIdentifier
        ACCOUNT_TYPE = :accountType
        ACCOUNT_NUMBER = :accountNumber
        IBAN_NUMBER = :ibanNumber
        CLABE_NUMBER = :clabeNumber
        WALLET_ADDRESS = :walletAddress
        PAN_NUMBER = :panNumber
        ROUTING_NUMBER = :routingNumber
        ABA_WIRE_ROUTING_NUMBER = :abaWireRoutingNumber
        SWIFT_CODE = :swiftCode
        AU_BSB = :auBsb
        CA_CPA = :caCpa
        CNAPS = :cnaps
        GB_SORT_CODE = :gbSortCode
        IN_IFSC = :inIfsc
        MY_BRANCH_CODE = :myBranchCode
        BR_CODIGO = :brCodigo
        ROUTING_NUMBER_TYPE = :routingNumberType
        ADDRESS = :address
        JP_ZENGIN_CODE = :jpZenginCode
        SE_BANKGIRO_CLEARING_CODE = :seBankgiroClearingCode
        NZ_NATIONAL_CLEARING_CODE = :nzNationalClearingCode
        HK_INTERBANK_CLEARING_CODE = :hkInterbankClearingCode
        HU_INTERBANK_CLEARING_CODE = :huInterbankClearingCode
        DK_INTERBANK_CLEARING_CODE = :dkInterbankClearingCode
        ID_SKNBI_CODE = :idSknbiCode
        ZA_NATIONAL_CLEARING_CODE = :za_national_clearing_code
      end
    end
  end
end
