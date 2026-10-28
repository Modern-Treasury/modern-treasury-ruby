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
            ModernTreasury::AccountCollectionFlowCreateRequest,
            ModernTreasury::PaymentFlowCreateRequest,
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
              ModernTreasury::AccountCollectionFlowCreateRequest::OrHash,
              ModernTreasury::PaymentFlowCreateRequest::OrHash,
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
                ModernTreasury::AccountCollectionFlowCreateRequest,
                ModernTreasury::PaymentFlowCreateRequest,
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
              ModernTreasury::AccountCollectionFlowCreateRequest,
              ModernTreasury::PaymentFlowCreateRequest,
              ModernTreasury::EmbeddableFlowCreateParams::Options::Type
            )
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
