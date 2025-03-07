# typed: strong

module ModernTreasury
  module Models
    class LedgerAccountDeleteParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig do
        params(request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: ModernTreasury::RequestOptions}) }
      def to_hash
      end
    end
  end
end
