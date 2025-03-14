# typed: strong

module ModernTreasury
  module Models
    class AccountCollectionFlowUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # Required. The updated status of the account collection flow. Can only be used to
      #   mark a flow as `cancelled`.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          status: Symbol,
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(status:, request_options: {})
      end

      sig { override.returns({status: Symbol, request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end

      # Required. The updated status of the account collection flow. Can only be used to
      #   mark a flow as `cancelled`.
      class Status < ModernTreasury::Enum
        abstract!

        CANCELLED = :cancelled

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
