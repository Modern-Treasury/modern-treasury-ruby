# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      # One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
      # Use `debit` when you need to charge a counterparty. This field helps us send a
      # more tailored email to your counterparties."
      sig { returns(ModernTreasury::TransactionDirection::OrSymbol) }
      attr_accessor :direction

      # The URL you want your customer to visit upon filling out the form. By default,
      # they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
      # URL if set.
      sig { returns(T.nilable(String)) }
      attr_reader :custom_redirect

      sig { params(custom_redirect: String).void }
      attr_writer :custom_redirect

      # The list of fields you want on the form. This field is optional and if it is not
      # set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
      # \"routingNumber\", \"address\"]. The full list of options is [\"name\",
      # \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
      # \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
      sig do
        returns(
          T.nilable(
            T::Array[
              ModernTreasury::CounterpartyCollectAccountParams::Field::OrSymbol
            ]
          )
        )
      end
      attr_reader :fields

      sig do
        params(
          fields:
            T::Array[
              ModernTreasury::CounterpartyCollectAccountParams::Field::OrSymbol
            ]
        ).void
      end
      attr_writer :fields

      # By default, Modern Treasury will send an email to your counterparty that
      # includes a link to the form they must fill out. However, if you would like to
      # send the counterparty the link, you can set this parameter to `false`. The JSON
      # body will include the link to the secure Modern Treasury form.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_email

      sig { params(send_email: T::Boolean).void }
      attr_writer :send_email

      sig do
        params(
          direction: ModernTreasury::TransactionDirection::OrSymbol,
          custom_redirect: String,
          fields:
            T::Array[
              ModernTreasury::CounterpartyCollectAccountParams::Field::OrSymbol
            ],
          send_email: T::Boolean,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # One of `credit` or `debit`. Use `credit` when you want to pay a counterparty.
        # Use `debit` when you need to charge a counterparty. This field helps us send a
        # more tailored email to your counterparties."
        direction:,
        # The URL you want your customer to visit upon filling out the form. By default,
        # they will be sent to a Modern Treasury landing page. This must be a valid HTTPS
        # URL if set.
        custom_redirect: nil,
        # The list of fields you want on the form. This field is optional and if it is not
        # set, will default to [\"nameOnAccount\", \"accountType\", \"accountNumber\",
        # \"routingNumber\", \"address\"]. The full list of options is [\"name\",
        # \"nameOnAccount\", \"taxpayerIdentifier\", \"accountType\", \"accountNumber\",
        # \"routingNumber\", \"address\", \"ibanNumber\", \"swiftCode\"].
        fields: nil,
        # By default, Modern Treasury will send an email to your counterparty that
        # includes a link to the form they must fill out. However, if you would like to
        # send the counterparty the link, you can set this parameter to `false`. The JSON
        # body will include the link to the secure Modern Treasury form.
        send_email: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            direction: ModernTreasury::TransactionDirection::OrSymbol,
            custom_redirect: String,
            fields:
              T::Array[
                ModernTreasury::CounterpartyCollectAccountParams::Field::OrSymbol
              ],
            send_email: T::Boolean,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Field
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::CounterpartyCollectAccountParams::Field
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME =
          T.let(
            :name,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        NAME_ON_ACCOUNT =
          T.let(
            :nameOnAccount,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        TAXPAYER_IDENTIFIER =
          T.let(
            :taxpayerIdentifier,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ACCOUNT_TYPE =
          T.let(
            :accountType,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ACCOUNT_NUMBER =
          T.let(
            :accountNumber,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        IBAN_NUMBER =
          T.let(
            :ibanNumber,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        CLABE_NUMBER =
          T.let(
            :clabeNumber,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        WALLET_ADDRESS =
          T.let(
            :walletAddress,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        PAN_NUMBER =
          T.let(
            :panNumber,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ROUTING_NUMBER =
          T.let(
            :routingNumber,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ABA_WIRE_ROUTING_NUMBER =
          T.let(
            :abaWireRoutingNumber,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        SWIFT_CODE =
          T.let(
            :swiftCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        AU_BSB =
          T.let(
            :auBsb,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        CA_CPA =
          T.let(
            :caCpa,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        CNAPS =
          T.let(
            :cnaps,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        GB_SORT_CODE =
          T.let(
            :gbSortCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        IN_IFSC =
          T.let(
            :inIfsc,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        MY_BRANCH_CODE =
          T.let(
            :myBranchCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        BR_CODIGO =
          T.let(
            :brCodigo,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ROUTING_NUMBER_TYPE =
          T.let(
            :routingNumberType,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ADDRESS =
          T.let(
            :address,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        JP_ZENGIN_CODE =
          T.let(
            :jpZenginCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        SE_BANKGIRO_CLEARING_CODE =
          T.let(
            :seBankgiroClearingCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        NZ_NATIONAL_CLEARING_CODE =
          T.let(
            :nzNationalClearingCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        HK_INTERBANK_CLEARING_CODE =
          T.let(
            :hkInterbankClearingCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        HU_INTERBANK_CLEARING_CODE =
          T.let(
            :huInterbankClearingCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        DK_INTERBANK_CLEARING_CODE =
          T.let(
            :dkInterbankClearingCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ID_SKNBI_CODE =
          T.let(
            :idSknbiCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )
        ZA_NATIONAL_CLEARING_CODE =
          T.let(
            :zaNationalClearingCode,
            ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::CounterpartyCollectAccountParams::Field::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
