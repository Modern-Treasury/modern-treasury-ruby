# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Required. The updated status of the account collection flow. Can only be used to
      #   mark a flow as `cancelled`.
      sig { returns(ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status::OrSymbol) }
      attr_accessor :status

      sig do
        params(
          status: ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status::OrSymbol,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(status:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              status: ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status::OrSymbol,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Required. The updated status of the account collection flow. Can only be used to
      #   mark a flow as `cancelled`.
      module Status
        extend ModernTreasury::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status::TaggedSymbol) }

        CANCELLED =
          T.let(:cancelled, ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[ModernTreasury::Models::AccountCollectionFlowUpdateParams::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
