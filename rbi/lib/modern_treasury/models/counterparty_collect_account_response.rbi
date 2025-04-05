# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountResponse < ModernTreasury::Internal::Type::BaseModel
      # The id of the existing counterparty.
      sig { returns(String) }
      attr_accessor :id

      # This is the link to the secure Modern Treasury form. By default, Modern Treasury
      #   will send an email to your counterparty that includes a link to this form.
      #   However, if `send_email` is passed as `false` in the body then Modern Treasury
      #   will not send the email and you can send it to the counterparty directly.
      sig { returns(String) }
      attr_accessor :form_link

      # This field will be `true` if an email requesting account details has already
      #   been sent to this counterparty.
      sig { returns(T::Boolean) }
      attr_accessor :is_resend

      sig { params(id: String, form_link: String, is_resend: T::Boolean).returns(T.attached_class) }
      def self.new(id:, form_link:, is_resend:); end

      sig { override.returns({id: String, form_link: String, is_resend: T::Boolean}) }
      def to_hash; end
    end
  end
end
