# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#collect_account
    class CounterpartyCollectAccountParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute direction
      #   One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      #   Use `debit` when you need to charge a counterparty. This field helps us send a
      #   more tailored email to your counterparties."
      #
      #   @return [Symbol, ModernTreasury::TransactionDirection]
      required :direction, enum: -> { ModernTreasury::TransactionDirection }

      # @!attribute custom_redirect
      #   The URL you want your customer to visit upon filling out the form. By default,
      #   they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
      #   URL if set.
      #
      #   @return [String, nil]
      optional :custom_redirect, String

      # @!attribute fields
      #   The list of fields you want on the form. This field is optional and if it is not
      #   set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\"]. The full list of options is [\"name\",
      #   \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
      #
      #   @return [Array<Symbol, ModernTreasury::CounterpartyCollectAccountParams::Field>, nil]
      optional :fields,
               -> {
                 ModernTreasury::Internal::Type::ArrayOf[enum: ModernTreasury::CounterpartyCollectAccountParams::Field]
               }

      # @!attribute send_email
      #   By default, Modern Treasury will send an email to your counterparty that
      #   includes a link to the form they must fill out. However, if you would like to
      #   send the counterparty the link, you can set this parameter to `false`. The JSON
      #   body will include the link to the secure Modern Treasury form.
      #
      #   @return [Boolean, nil]
      optional :send_email, ModernTreasury::Internal::Type::Boolean

      # @!method initialize(direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::CounterpartyCollectAccountParams} for more details.
      #
      #   @param direction [Symbol, ModernTreasury::TransactionDirection] One of `credit` or `debit`. Use `credit` when you want to pay a counterparty. Us
      #
      #   @param custom_redirect [String] The URL you want your customer to visit upon filling out the form. By default, t
      #
      #   @param fields [Array<Symbol, ModernTreasury::CounterpartyCollectAccountParams::Field>] The list of fields you want on the form. This field is optional and if it is not
      #
      #   @param send_email [Boolean] By default, Modern Treasury will send an email to your counterparty that include
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

      module Field
        extend ModernTreasury::Internal::Type::Enum

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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
