# typed: strong

module ModernTreasury
  module Models
    class CounterpartyCollectAccountResponse < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::CounterpartyCollectAccountResponse,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The id of the existing counterparty.
      sig { returns(String) }
      attr_accessor :id

      # This is the link to the secure Modern Treasury form. By default, Modern Treasury
      # will send an email to your counterparty that includes a link to this form.
      # However, if `send_email` is passed as `false` in the body then Modern Treasury
      # will not send the email and you can send it to the counterparty directly.
      sig { returns(String) }
      attr_accessor :form_link

      # This field will be `true` if an email requesting account details has already
      # been sent to this counterparty.
      sig { returns(T::Boolean) }
      attr_accessor :is_resend

      sig do
        params(id: String, form_link: String, is_resend: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(
        # The id of the existing counterparty.
        id:,
        # This is the link to the secure Modern Treasury form. By default, Modern Treasury
        # will send an email to your counterparty that includes a link to this form.
        # However, if `send_email` is passed as `false` in the body then Modern Treasury
        # will not send the email and you can send it to the counterparty directly.
        form_link:,
        # This field will be `true` if an email requesting account details has already
        # been sent to this counterparty.
        is_resend:
      )
      end

      sig do
        override.returns(
          { id: String, form_link: String, is_resend: T::Boolean }
        )
      end
      def to_hash
      end
    end
  end
end
