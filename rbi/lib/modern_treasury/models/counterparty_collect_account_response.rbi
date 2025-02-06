# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountResponse < ModernTreasury::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :form_link

      sig { returns(T::Boolean) }
      attr_accessor :is_resend

      sig { params(id: String, form_link: String, is_resend: T::Boolean).void }
      def initialize(id:, form_link:, is_resend:)
      end

      sig { override.returns({id: String, form_link: String, is_resend: T::Boolean}) }
      def to_hash
      end
    end
  end
end
