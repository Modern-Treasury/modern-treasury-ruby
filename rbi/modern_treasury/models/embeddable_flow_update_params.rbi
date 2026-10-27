# typed: strong

module ModernTreasury
  module Models
    class EmbeddableFlowUpdateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::EmbeddableFlowUpdateParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The updated status of the flow. Can only be used to mark the flow as
      # `cancelled`.
      sig do
        returns(ModernTreasury::EmbeddableFlowUpdateParams::Status::OrSymbol)
      end
      attr_accessor :status

      sig do
        params(
          id: String,
          status: ModernTreasury::EmbeddableFlowUpdateParams::Status::OrSymbol,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The updated status of the flow. Can only be used to mark the flow as
        # `cancelled`.
        status:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            status:
              ModernTreasury::EmbeddableFlowUpdateParams::Status::OrSymbol,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The updated status of the flow. Can only be used to mark the flow as
      # `cancelled`.
      module Status
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::EmbeddableFlowUpdateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CANCELLED =
          T.let(
            :cancelled,
            ModernTreasury::EmbeddableFlowUpdateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::EmbeddableFlowUpdateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
