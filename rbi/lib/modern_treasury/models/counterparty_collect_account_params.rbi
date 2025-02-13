# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(T.nilable(String)) }
      def custom_redirect
      end

      sig { params(_: String).returns(String) }
      def custom_redirect=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def fields
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def fields=(_)
      end

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
        ).void
      end
      def initialize(direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {})
      end

      sig do
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
