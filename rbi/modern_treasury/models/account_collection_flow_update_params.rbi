# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::AccountCollectionFlowUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      # Required. The updated status of the account collection flow. Can only be used to
      # mark a flow as `cancelled`.
      sig do
        returns(
          ModernTreasury::AccountCollectionFlowUpdateParams::Status::OrSymbol
        )
      end
      attr_accessor :status

      sig do
        params(
          status:
            ModernTreasury::AccountCollectionFlowUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Required. The updated status of the account collection flow. Can only be used to
        # mark a flow as `cancelled`.
        status:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status:
              ModernTreasury::AccountCollectionFlowUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Required. The updated status of the account collection flow. Can only be used to
      # mark a flow as `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::AccountCollectionFlowUpdateParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::AccountCollectionFlowUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::AccountCollectionFlowUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
