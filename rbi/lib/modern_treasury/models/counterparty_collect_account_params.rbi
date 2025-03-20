# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      #   Use `debit` when you need to charge a counterparty. This field helps us send a
      #   more tailored email to your counterparties."
      sig { returns(ModernTreasury::Models::TransactionDirection::OrSymbol) }
      def direction
      end

      sig do
        params(_: ModernTreasury::Models::TransactionDirection::OrSymbol)
          .returns(ModernTreasury::Models::TransactionDirection::OrSymbol)
      end
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
      sig { returns(T.nilable(T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol])) }
      def fields
      end

      sig do
        params(_: T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol])
          .returns(T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol])
      end
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
          direction: ModernTreasury::Models::TransactionDirection::OrSymbol,
          custom_redirect: String,
          fields: T::Array[ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol],
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

        NAME = T.let(:name, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        NAME_ON_ACCOUNT =
          T.let(:nameOnAccount, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        TAXPAYER_IDENTIFIER =
          T.let(:taxpayerIdentifier, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ACCOUNT_TYPE =
          T.let(:accountType, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ACCOUNT_NUMBER =
          T.let(:accountNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        IBAN_NUMBER =
          T.let(:ibanNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        CLABE_NUMBER =
          T.let(:clabeNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        WALLET_ADDRESS =
          T.let(:walletAddress, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        PAN_NUMBER = T.let(:panNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ROUTING_NUMBER =
          T.let(:routingNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ABA_WIRE_ROUTING_NUMBER =
          T.let(:abaWireRoutingNumber, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        SWIFT_CODE = T.let(:swiftCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        AU_BSB = T.let(:auBsb, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        CA_CPA = T.let(:caCpa, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        CNAPS = T.let(:cnaps, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        GB_SORT_CODE =
          T.let(:gbSortCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        IN_IFSC = T.let(:inIfsc, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        MY_BRANCH_CODE =
          T.let(:myBranchCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        BR_CODIGO = T.let(:brCodigo, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ROUTING_NUMBER_TYPE =
          T.let(:routingNumberType, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ADDRESS = T.let(:address, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        JP_ZENGIN_CODE =
          T.let(:jpZenginCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        SE_BANKGIRO_CLEARING_CODE =
          T.let(:seBankgiroClearingCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        NZ_NATIONAL_CLEARING_CODE =
          T.let(:nzNationalClearingCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        HK_INTERBANK_CLEARING_CODE =
          T.let(:hkInterbankClearingCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        HU_INTERBANK_CLEARING_CODE =
          T.let(:huInterbankClearingCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        DK_INTERBANK_CLEARING_CODE =
          T.let(:dkInterbankClearingCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ID_SKNBI_CODE =
          T.let(:idSknbiCode, ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol)
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :za_national_clearing_code,
            ModernTreasury::Models::CounterpartyCollectAccountParams::Field::OrSymbol
          )
      end
    end
  end
end
