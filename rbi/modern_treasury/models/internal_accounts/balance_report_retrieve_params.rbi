# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportRetrieveParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ModernTreasury::InternalAccounts::BalanceReportRetrieveParams,
              ModernTreasury::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :internal_account_id

        sig do
          params(
            internal_account_id: String,
            request_options: ModernTreasury::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(internal_account_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              internal_account_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
        end
        def to_hash
        end

        module ID
          extend ModernTreasury::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                ModernTreasury::InternalAccounts::BalanceReportRetrieveParams::ID::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                ModernTreasury::InternalAccounts::BalanceReportRetrieveParams::ID::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                ModernTreasury::InternalAccounts::BalanceReportRetrieveParams::ID
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LATEST =
            T.let(
              :latest,
              ModernTreasury::InternalAccounts::BalanceReportRetrieveParams::ID::TaggedSymbol
            )
        end
      end
    end
  end
end
