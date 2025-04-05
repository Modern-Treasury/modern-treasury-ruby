# typed: strong

module ModernTreasury
  module Resources
    class Returns
      # Create a return.
      sig do
        params(
          returnable_id: T.nilable(String),
          returnable_type: ModernTreasury::Models::ReturnCreateParams::ReturnableType::OrSymbol,
          additional_information: T.nilable(String),
          code: T.nilable(ModernTreasury::Models::ReturnCreateParams::Code::OrSymbol),
          data: T.nilable(T.anything),
          date_of_death: T.nilable(Date),
          reason: T.nilable(String),
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::ReturnObject)
      end
      def create(
        # The ID of the object being returned or `null`.
        returnable_id:,
        # The type of object being returned. Currently, this may only be
        # incoming_payment_detail.
        returnable_type:,
        # Some returns may include additional information from the bank. In these cases,
        # this string will be present.
        additional_information: nil,
        # The return code. For ACH returns, this is the required ACH return code.
        code: nil,
        # The raw data from the return file that we get from the bank.
        data: nil,
        # If the return code is `R14` or `R15` this is the date the deceased counterparty
        # passed away.
        date_of_death: nil,
        # An optional description of the reason for the return. This is for internal usage
        # and will not be transmitted to the bank.”
        reason: nil,
        request_options: {}
      ); end
      # Get a single return.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Models::ReturnObject)
      end
      def retrieve(
        # The ID of an existing return.
        id,
        request_options: {}
      ); end
      # Get a list of returns.
      sig do
        params(
          after_cursor: T.nilable(String),
          counterparty_id: String,
          internal_account_id: String,
          per_page: Integer,
          returnable_id: String,
          returnable_type: ModernTreasury::Models::ReturnListParams::ReturnableType::OrSymbol,
          request_options: T.nilable(T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash))
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::ReturnObject])
      end
      def list(
        after_cursor: nil,
        # Specify `counterparty_id` if you wish to see returns that occurred with a
        # specific counterparty.
        counterparty_id: nil,
        # Specify `internal_account_id` if you wish to see returns to/from a specific
        # account.
        internal_account_id: nil,
        per_page: nil,
        # The ID of a valid returnable. Must be accompanied by `returnable_type`.
        returnable_id: nil,
        # One of `payment_order`, `paper_item`, `reversal`, or `incoming_payment_detail`.
        # Must be accompanied by `returnable_id`.
        returnable_type: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
