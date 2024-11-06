# frozen_string_literal: true

module ModernTreasury
  module Models
    class CounterpartyCollectAccountResponse < ModernTreasury::BaseModel
      # @!attribute [rw] id
      #   The id of the existing counterparty.
      #   @return [String]
      required :id, String

      # @!attribute [rw] form_link
      #   This is the link to the secure Modern Treasury form. By default, Modern Treasury will send an email to your counterparty that includes a link to this form. However, if `send_email` is passed as `false` in the body then Modern Treasury will not send the email and you can send it to the counterparty directly.
      #   @return [String]
      required :form_link, String

      # @!attribute [rw] is_resend
      #   This field will be `true` if an email requesting account details has already been sent to this counterparty.
      #   @return [Boolean]
      required :is_resend, ModernTreasury::BooleanModel

      # @!parse
      #   # Create a new instance of CounterpartyCollectAccountResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The id of the existing counterparty.
      #   #   @option data [String] :form_link This is the link to the secure Modern Treasury form. By default, Modern Treasury
      #   #     will send an email to your counterparty that includes a link to this form.
      #   #     However, if `send_email` is passed as `false` in the body then Modern Treasury
      #   #     will not send the email and you can send it to the counterparty directly.
      #   #   @option data [Hash] :is_resend This field will be `true` if an email requesting account details has already
      #   #     been sent to this counterparty.
      #   def initialize(data = {}) = super
    end
  end
end
