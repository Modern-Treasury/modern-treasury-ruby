# typed: strong

module ModernTreasury
  module Models
    class ConnectionLegalEntityUpdateParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias { T.all({status: Symbol}, ModernTreasury::RequestParameters::Shape) }

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig { params(status: Symbol, request_options: ModernTreasury::RequestOpts).void }
      def initialize(status: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::ConnectionLegalEntityUpdateParams::Shape) }
      def to_h; end

      class Status < ModernTreasury::Enum
        abstract!

        PROCESSING = :processing

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
