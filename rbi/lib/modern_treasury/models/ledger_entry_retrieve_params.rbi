# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias { T.all({show_balances: T::Boolean}, ModernTreasury::RequestParameters::Shape) }

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_balances

      sig { params(show_balances: T::Boolean).void }
      attr_writer :show_balances

      sig { params(show_balances: T::Boolean, request_options: ModernTreasury::RequestOpts).void }
      def initialize(show_balances: nil, request_options: {}); end

      sig { returns(ModernTreasury::Models::LedgerEntryRetrieveParams::Shape) }
      def to_h; end
    end
  end
end
