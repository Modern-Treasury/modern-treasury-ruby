# typed: strong

module ModernTreasury
  module Models
    class EmbeddableFlowCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::EmbeddableFlowCreateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The parameters for the selected template's flow.
      sig do
        returns(
          T.any(
            ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest,
            ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest,
            ModernTreasury::EmbeddableFlowCreateParams::Options::Type
          )
        )
      end
      attr_accessor :options

      sig do
        returns(ModernTreasury::EmbeddableFlowCreateParams::Template::OrSymbol)
      end
      attr_accessor :template

      sig do
        params(
          options:
            T.any(
              ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::OrHash,
              ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::OrHash,
              ModernTreasury::EmbeddableFlowCreateParams::Options::Type::OrHash
            ),
          template:
            ModernTreasury::EmbeddableFlowCreateParams::Template::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The parameters for the selected template's flow.
        options:,
        template:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            options:
              T.any(
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest,
                ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest,
                ModernTreasury::EmbeddableFlowCreateParams::Options::Type
              ),
            template:
              ModernTreasury::EmbeddableFlowCreateParams::Template::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The parameters for the selected template's flow.
      module Options
        extend ModernTreasury::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest,
              ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest,
              ModernTreasury::EmbeddableFlowCreateParams::Options::Type
            )
          end

        class AccountCollectionFlowCreateRequest < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest,
                ModernTreasury::Internal::AnyHash
              )
            end

          # Required.
          sig { returns(String) }
          attr_accessor :counterparty_id

          sig { returns(T::Array[String]) }
          attr_accessor :payment_types

          sig do
            returns(
              T.nilable(
                T::Array[
                  ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
                ]
              )
            )
          end
          attr_reader :receiving_countries

          sig do
            params(
              receiving_countries:
                T::Array[
                  ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
                ]
            ).void
          end
          attr_writer :receiving_countries

          sig do
            params(
              counterparty_id: String,
              payment_types: T::Array[String],
              receiving_countries:
                T::Array[
                  ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Required.
            counterparty_id:,
            payment_types:,
            receiving_countries: nil
          )
          end

          sig do
            override.returns(
              {
                counterparty_id: String,
                payment_types: T::Array[String],
                receiving_countries:
                  T::Array[
                    ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::OrSymbol
                  ]
              }
            )
          end
          def to_hash
          end

          # Optional. Array of 3-digit ISO country codes.
          module ReceivingCountry
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USA =
              T.let(
                :USA,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            AUS =
              T.let(
                :AUS,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            BEL =
              T.let(
                :BEL,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            CAN =
              T.let(
                :CAN,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            CHL =
              T.let(
                :CHL,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            CHN =
              T.let(
                :CHN,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            COL =
              T.let(
                :COL,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            FRA =
              T.let(
                :FRA,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            DEU =
              T.let(
                :DEU,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            HKG =
              T.let(
                :HKG,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            IND =
              T.let(
                :IND,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            IRL =
              T.let(
                :IRL,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            ITA =
              T.let(
                :ITA,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            MEX =
              T.let(
                :MEX,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            NLD =
              T.let(
                :NLD,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            PER =
              T.let(
                :PER,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            ESP =
              T.let(
                :ESP,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )
            GBR =
              T.let(
                :GBR,
                ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::EmbeddableFlowCreateParams::Options::AccountCollectionFlowCreateRequest::ReceivingCountry::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PaymentFlowCreateRequest < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest,
                ModernTreasury::Internal::AnyHash
              )
            end

          # Required. Value in specified currency's smallest unit. e.g. $10 would be
          # represented as 1000. Can be any integer up to 36 digits.
          sig { returns(Integer) }
          attr_accessor :amount

          # Required. The ID of a counterparty associated with the payment. As part of the
          # payment workflow an external account will be associated with this model.
          sig { returns(String) }
          attr_accessor :counterparty_id

          # Required. The currency of the payment.
          sig { returns(String) }
          attr_accessor :currency

          # Required. Describes the direction money is flowing in the transaction. Can only
          # be `debit`. A `debit` pulls money from someone else's account to your own.
          sig do
            returns(
              ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction::OrSymbol
            )
          end
          attr_accessor :direction

          # Required. The ID of one of your organization's internal accounts.
          sig { returns(String) }
          attr_accessor :originating_account_id

          # Optional. Can only be passed in when `effective_date_selection_enabled` is
          # `true`. When set, the due date is shown to your end-user in the pre-built UI as
          # they are selecting a payment `effective_date`.
          sig { returns(T.nilable(Date)) }
          attr_reader :due_date

          sig { params(due_date: Date).void }
          attr_writer :due_date

          sig do
            params(
              amount: Integer,
              counterparty_id: String,
              currency: String,
              direction:
                ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction::OrSymbol,
              originating_account_id: String,
              due_date: Date
            ).returns(T.attached_class)
          end
          def self.new(
            # Required. Value in specified currency's smallest unit. e.g. $10 would be
            # represented as 1000. Can be any integer up to 36 digits.
            amount:,
            # Required. The ID of a counterparty associated with the payment. As part of the
            # payment workflow an external account will be associated with this model.
            counterparty_id:,
            # Required. The currency of the payment.
            currency:,
            # Required. Describes the direction money is flowing in the transaction. Can only
            # be `debit`. A `debit` pulls money from someone else's account to your own.
            direction:,
            # Required. The ID of one of your organization's internal accounts.
            originating_account_id:,
            # Optional. Can only be passed in when `effective_date_selection_enabled` is
            # `true`. When set, the due date is shown to your end-user in the pre-built UI as
            # they are selecting a payment `effective_date`.
            due_date: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Integer,
                counterparty_id: String,
                currency: String,
                direction:
                  ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction::OrSymbol,
                originating_account_id: String,
                due_date: Date
              }
            )
          end
          def to_hash
          end

          # Required. Describes the direction money is flowing in the transaction. Can only
          # be `debit`. A `debit` pulls money from someone else's account to your own.
          module Direction
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT =
              T.let(
                :credit,
                ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction::TaggedSymbol
              )
            DEBIT =
              T.let(
                :debit,
                ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::EmbeddableFlowCreateParams::Options::PaymentFlowCreateRequest::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Type < ModernTreasury::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ModernTreasury::EmbeddableFlowCreateParams::Options::Type,
                ModernTreasury::Internal::AnyHash
              )
            end

          sig do
            returns(
              ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              type:
                ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(type:)
          end

          sig do
            override.returns(
              {
                type:
                  ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend ModernTreasury::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INDIVIDUAL =
              T.let(
                :individual,
                ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  ModernTreasury::EmbeddableFlowCreateParams::Options::Type::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              ModernTreasury::EmbeddableFlowCreateParams::Options::Variants
            ]
          )
        end
        def self.variants
        end
      end

      module Template
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::EmbeddableFlowCreateParams::Template)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEGAL_ENTITY_ONBOARDING =
          T.let(
            :legal_entity_onboarding,
            ModernTreasury::EmbeddableFlowCreateParams::Template::TaggedSymbol
          )
        ACCOUNT_COLLECTION =
          T.let(
            :account_collection,
            ModernTreasury::EmbeddableFlowCreateParams::Template::TaggedSymbol
          )
        PAYMENT =
          T.let(
            :payment,
            ModernTreasury::EmbeddableFlowCreateParams::Template::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::EmbeddableFlowCreateParams::Template::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
