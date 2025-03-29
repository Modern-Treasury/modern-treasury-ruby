# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyCollectAccountParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute direction
      #   One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      #     Use `debit` when you need to charge a counterparty. This field helps us send a
      #     more tailored email to your counterparties."
      #
      #   @return [Symbol, ModernTreasury::Models::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::Models::TransactionDirection }

      # @!attribute [r] custom_redirect
      #   The URL you want your customer to visit upon filling out the form. By default,
      #     they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
      #     URL if set.
      #
      #   @return [String, nil]
      optional :custom_redirect, String

      # @!parse
      #   # @return [String]
      #   attr_writer :custom_redirect

      # @!attribute [r] fields
      #   The list of fields you want on the form. This field is optional and if it is not
      #     set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
      #     \"routingNumber\", \"address\"]. The full list of options is [\"name\",
      #     \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
      #     \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
      #
      #   @return [Array<Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field>, nil]
      optional :fields,
               -> { ModernTreasury::ArrayOf[enum: ModernTreasury::Models::CounterpartyCollectAccountParams::Field] }

      # @!parse
      #   # @return [Array<Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field>]
      #   attr_writer :fields

      # @!attribute [r] send_email
      #   By default, Modern Treasury will send an email to your counterparty that
      #     includes a link to the form they must fill out. However, if you would like to
      #     send the counterparty the link, you can set this parameter to `false`. The JSON
      #     body will include the link to the secure Modern Treasury form.
      #
      #   @return [Boolean, nil]
      optional :send_email, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :send_email

      # @!parse
      #   # @param direction [Symbol, ModernTreasury::Models::TransactionDirection]
      #   # @param custom_redirect [String]
      #   # @param fields [Array<Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field>]
      #   # @param send_email [Boolean]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {}, **) = super

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      module Field
        extend ModernTreasury::Enum

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
        ZA_NATIONAL_CLEARING_CODE = :zaNationalClearingCode

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
