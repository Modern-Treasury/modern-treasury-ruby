# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {direction: Symbol, custom_redirect: String, fields: T::Array[Symbol], send_email: T::Boolean},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(Symbol) }
      attr_accessor :direction

      sig { returns(T.nilable(String)) }
      attr_reader :custom_redirect

      sig { params(custom_redirect: String).void }
      attr_writer :custom_redirect

      sig { returns(T.nilable(T::Array[Symbol])) }
      attr_reader :fields

      sig { params(fields: T::Array[Symbol]).void }
      attr_writer :fields

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_email

      sig { params(send_email: T::Boolean).void }
      attr_writer :send_email

      sig do
        params(
          direction: Symbol,
          custom_redirect: String,
          fields: T::Array[Symbol],
          send_email: T::Boolean,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::CounterpartyCollectAccountParams::Shape) }
      def to_h; end

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
        def self.values; end
      end
    end
  end
end
