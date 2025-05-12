# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlow < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountCollectionFlow,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The ID of a counterparty. An external account created with this flow will be
      # associated with this counterparty.
      sig { returns(String) }
      attr_accessor :counterparty_id

      sig do
        returns(
          T::Array[
            ModernTreasury::AccountCollectionFlow::PaymentType::TaggedSymbol
          ]
        )
      end
      attr_accessor :payment_types

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The client token of the account collection flow. This token can be used to embed
      # account collection in your client-side application.
      sig { returns(T.nilable(String)) }
      attr_reader :client_token

      sig { params(client_token: String).void }
      attr_writer :client_token

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # If present, the ID of the external account created using this flow.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :live_mode

      sig { params(live_mode: T::Boolean).void }
      attr_writer :live_mode

      sig { returns(T.nilable(String)) }
      attr_reader :object

      sig { params(object: String).void }
      attr_writer :object

      sig do
        returns(
          T.nilable(
            T::Array[
              ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :receiving_countries

      sig do
        params(
          receiving_countries:
            T::Array[
              ModernTreasury::AccountCollectionFlow::ReceivingCountry::OrSymbol
            ]
        ).void
      end
      attr_writer :receiving_countries

      # The current status of the account collection flow. One of `pending`,
      # `completed`, `expired`, or `cancelled`.
      sig do
        returns(
          T.nilable(ModernTreasury::AccountCollectionFlow::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: ModernTreasury::AccountCollectionFlow::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          counterparty_id: String,
          payment_types:
            T::Array[
              ModernTreasury::AccountCollectionFlow::PaymentType::OrSymbol
            ],
          id: String,
          client_token: String,
          created_at: Time,
          external_account_id: T.nilable(String),
          live_mode: T::Boolean,
          object: String,
          receiving_countries:
            T::Array[
              ModernTreasury::AccountCollectionFlow::ReceivingCountry::OrSymbol
            ],
          status: ModernTreasury::AccountCollectionFlow::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of a counterparty. An external account created with this flow will be
        # associated with this counterparty.
        counterparty_id:,
        payment_types:,
        id: nil,
        # The client token of the account collection flow. This token can be used to embed
        # account collection in your client-side application.
        client_token: nil,
        created_at: nil,
        # If present, the ID of the external account created using this flow.
        external_account_id: nil,
        # This field will be true if this object exists in the live environment or false
        # if it exists in the test environment.
        live_mode: nil,
        object: nil,
        receiving_countries: nil,
        # The current status of the account collection flow. One of `pending`,
        # `completed`, `expired`, or `cancelled`.
        status: nil,
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            counterparty_id: String,
            payment_types:
              T::Array[
                ModernTreasury::AccountCollectionFlow::PaymentType::TaggedSymbol
              ],
            id: String,
            client_token: String,
            created_at: Time,
            external_account_id: T.nilable(String),
            live_mode: T::Boolean,
            object: String,
            receiving_countries:
              T::Array[
                ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
              ],
            status: ModernTreasury::AccountCollectionFlow::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # An account created with this flow will support payments of one of these types.
      module PaymentType
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::AccountCollectionFlow::PaymentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH =
          T.let(
            :ach,
            ModernTreasury::AccountCollectionFlow::PaymentType::TaggedSymbol
          )
        WIRE =
          T.let(
            :wire,
            ModernTreasury::AccountCollectionFlow::PaymentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountCollectionFlow::PaymentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # An account created with this flow will support wires from the US to these
      # countries.
      module ReceivingCountry
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountCollectionFlow::ReceivingCountry
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USA =
          T.let(
            :USA,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        AUS =
          T.let(
            :AUS,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        BEL =
          T.let(
            :BEL,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        CAN =
          T.let(
            :CAN,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        CHL =
          T.let(
            :CHL,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        CHN =
          T.let(
            :CHN,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        COL =
          T.let(
            :COL,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        FRA =
          T.let(
            :FRA,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        DEU =
          T.let(
            :DEU,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        HKG =
          T.let(
            :HKG,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        IND =
          T.let(
            :IND,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        IRL =
          T.let(
            :IRL,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        ITA =
          T.let(
            :ITA,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        MEX =
          T.let(
            :MEX,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        NLD =
          T.let(
            :NLD,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        PER =
          T.let(
            :PER,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        ESP =
          T.let(
            :ESP,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )
        GBR =
          T.let(
            :GBR,
            ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountCollectionFlow::ReceivingCountry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The current status of the account collection flow. One of `pending`,
      # `completed`, `expired`, or `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::AccountCollectionFlow::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::AccountCollectionFlow::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            ModernTreasury::AccountCollectionFlow::Status::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :expired,
            ModernTreasury::AccountCollectionFlow::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            ModernTreasury::AccountCollectionFlow::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountCollectionFlow::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
