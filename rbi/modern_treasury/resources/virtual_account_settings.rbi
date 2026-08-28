# typed: strong

module ModernTreasury
  module Resources
    class VirtualAccountSettings
      # Create a virtual account setting.
      sig do
        params(
          allocation_type: String,
          internal_account_id: String,
          allocation_identifier: T.nilable(String),
          allocation_length: T.nilable(Integer),
          allocation_range_end: T.nilable(String),
          allocation_range_start: T.nilable(String),
          external_id: T.nilable(String),
          generated_allocation_identifier_length: T.nilable(Integer),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::VirtualAccountSetting)
      end
      def create(
        # The method used to allocate virtual account numbers.
        allocation_type:,
        # The ID of the internal account for the virtual account setting.
        internal_account_id:,
        # The prefix, suffix, or bank-assigned identifier for the virtual account numbers.
        allocation_identifier: nil,
        # The total length of generated virtual account numbers.
        allocation_length: nil,
        # The inclusive end of the virtual account number range.
        allocation_range_end: nil,
        # The inclusive start of the virtual account number range.
        allocation_range_start: nil,
        # A user-defined identifier for the virtual account setting.
        external_id: nil,
        # The length of a generated virtual account setting prefix.
        generated_allocation_identifier_length: nil,
        request_options: {}
      )
      end

      # List virtual account settings.
      sig do
        params(
          after_cursor: T.nilable(String),
          external_id: String,
          per_page: Integer,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(
          ModernTreasury::Internal::Page[ModernTreasury::VirtualAccountSetting]
        )
      end
      def list(
        after_cursor: nil,
        # A user-defined identifier for the virtual account setting.
        external_id: nil,
        per_page: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
