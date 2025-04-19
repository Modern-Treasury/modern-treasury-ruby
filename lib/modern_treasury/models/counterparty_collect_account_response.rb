# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Counterparties#collect_account
    class CounterpartyCollectAccountResponse < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #   The id of the existing counterparty.
      #
      #   @return [String]
      required :id, String

      # @!attribute form_link
      #   This is the link to the secure Modern Treasury form. By default, Modern Treasury
      #   will send an email to your counterparty that includes a link to this form.
      #   However, if `send_email` is passed as `false` in the body then Modern Treasury
      #   will not send the email and you can send it to the counterparty directly.
      #
      #   @return [String]
      required :form_link, String

      # @!attribute is_resend
      #   This field will be `true` if an email requesting account details has already
      #   been sent to this counterparty.
      #
      #   @return [Boolean]
      required :is_resend, ModernTreasury::Internal::Type::Boolean

      # @!method initialize(id:, form_link:, is_resend:)
      #   @param id [String]
      #   @param form_link [String]
      #   @param is_resend [Boolean]
    end
  end
end
