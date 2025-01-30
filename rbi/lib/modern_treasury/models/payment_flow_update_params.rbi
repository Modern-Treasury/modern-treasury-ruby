# typed: strong

module ModernTreasury
  module Models
    class PaymentFlowUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias { T.all({status: Symbol}, ModernTreasury::RequestParameters::Shape) }

      sig { returns(Symbol) }
      attr_accessor :status

      sig { params(status: Symbol, request_options: ModernTreasury::RequestOpts).void }
      def initialize(status:, request_options: {}); end

      sig { returns(ModernTreasury::Models::PaymentFlowUpdateParams::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        CANCELLED = :cancelled

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
