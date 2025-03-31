# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      #   Use `debit` when you need to charge a counterparty. This field helps us send a
      #   more tailored email to your counterparties."
      sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
      attr_accessor :direction

      # The URL you want your customer to visit upon filling out the form. By default,
      #   they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
      #   URL if set.
      sig { returns(T.nilable(String)) }
      attr_reader :custom_redirect

      sig { params(custom_redirect: String).void }
      attr_writer :custom_redirect

      # The list of fields you want on the form. This field is optional and if it is not
      #   set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\"]. The full list of options is [\"name\",
      #   \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
      #   \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol])) }
      attr_reader :fields

      sig { params(fields: T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol]).void }
      attr_writer :fields

      # By default, Modern Treasury will send an email to your counterparty that
      #   includes a link to the form they must fill out. However, if you would like to
      #   send the counterparty the link, you can set this parameter to `false`. The JSON
      #   body will include the link to the secure Modern Treasury form.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_email

      sig { params(send_email: T::Boolean).void }
      attr_writer :send_email

      sig do
        params(
          direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          custom_redirect: String,
          fields: T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol],
          send_email: T::Boolean,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(direction:, custom_redirect: nil, fields: nil, send_email: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
              custom_redirect: String,
              fields: T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol],
              send_email: T::Boolean,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Field
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field) }
        OrSymbol =
          T.type_alias { T.any(Symbol, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol) }

        NAME = T.let(:name, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        NAME_ON_ACCOUNT =
          T.let(:nameOnAccount, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        TAXPAYER_IDENTIFIER =
          T.let(:taxpayerIdentifier, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        ACCOUNT_TYPE =
          T.let(:accountType, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        ACCOUNT_NUMBER =
          T.let(:accountNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        IBAN_NUMBER =
          T.let(:ibanNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        CLABE_NUMBER =
          T.let(:clabeNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        WALLET_ADDRESS =
          T.let(:walletAddress, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        PAN_NUMBER =
          T.let(:panNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        ROUTING_NUMBER =
          T.let(:routingNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        ABA_WIRE_ROUTING_NUMBER =
          T.let(
            :abaWireRoutingNumber,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        SWIFT_CODE =
          T.let(:swiftCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        AU_BSB = T.let(:auBsb, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        CA_CPA = T.let(:caCpa, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        CNAPS = T.let(:cnaps, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        GB_SORT_CODE =
          T.let(:gbSortCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        IN_IFSC = T.let(:inIfsc, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        MY_BRANCH_CODE =
          T.let(:myBranchCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        BR_CODIGO =
          T.let(:brCodigo, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        ROUTING_NUMBER_TYPE =
          T.let(:routingNumberType, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        ADDRESS = T.let(:address, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        JP_ZENGIN_CODE =
          T.let(:jpZenginCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :seBankgiroClearingCode,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nzNationalClearingCode,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hkInterbankClearingCode,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :huInterbankClearingCode,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dkInterbankClearingCode,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(:idSknbiCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol)
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :zaNationalClearingCode,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )

        sig { override.returns(T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
