# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountResponse < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def form_link
      end

      sig { params(_: String).returns(String) }
      def form_link=(_)
      end

      sig { returns(T::Boolean) }
      def is_resend
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_resend=(_)
      end

      sig { params(id: String, form_link: String, is_resend: T::Boolean).void }
      def initialize(id:, form_link:, is_resend:)
      end

      sig { override.returns({id: String, form_link: String, is_resend: T::Boolean}) }
      def to_hash
      end
    end
  end
end
