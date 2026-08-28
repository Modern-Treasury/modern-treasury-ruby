# frozen_string_literal: true

module ModernTreasury
  module Resources
    class VirtualAccountSettings
      # Some parameter documentations has been truncated, see
      # {ModernTreasury::Models::VirtualAccountSettingCreateParams} for more details.
      #
      # Create a virtual account setting.
      #
      # @overload create(allocation_type:, internal_account_id:, allocation_identifier: nil, allocation_length: nil, allocation_range_end: nil, allocation_range_start: nil, external_id: nil, generated_allocation_identifier_length: nil, request_options: {})
      #
      # @param allocation_type [String] The method used to allocate virtual account numbers.
      #
      # @param internal_account_id [String] The ID of the internal account for the virtual account setting.
      #
      # @param allocation_identifier [String, nil] The prefix, suffix, or bank-assigned identifier for the virtual account numbers.
      #
      # @param allocation_length [Integer, nil] The total length of generated virtual account numbers.
      #
      # @param allocation_range_end [String, nil] The inclusive end of the virtual account number range.
      #
      # @param allocation_range_start [String, nil] The inclusive start of the virtual account number range.
      #
      # @param external_id [String, nil] A user-defined identifier for the virtual account setting.
      #
      # @param generated_allocation_identifier_length [Integer, nil] The length of a generated virtual account setting prefix.
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Models::VirtualAccountSetting]
      #
      # @see ModernTreasury::Models::VirtualAccountSettingCreateParams
      def create(params)
        parsed, options = ModernTreasury::VirtualAccountSettingCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/virtual_account_settings",
          body: parsed,
          model: ModernTreasury::VirtualAccountSetting,
          options: options
        )
      end

      # List virtual account settings.
      #
      # @overload list(after_cursor: nil, external_id: nil, per_page: nil, request_options: {})
      #
      # @param after_cursor [String, nil]
      #
      # @param external_id [String] A user-defined identifier for the virtual account setting.
      #
      # @param per_page [Integer]
      #
      # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [ModernTreasury::Internal::Page<ModernTreasury::Models::VirtualAccountSetting>]
      #
      # @see ModernTreasury::Models::VirtualAccountSettingListParams
      def list(params = {})
        parsed, options = ModernTreasury::VirtualAccountSettingListParams.dump_request(params)
        query = ModernTreasury::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/virtual_account_settings",
          query: query,
          page: ModernTreasury::Internal::Page,
          model: ModernTreasury::VirtualAccountSetting,
          options: options
        )
      end

      # @api private
      #
      # @param client [ModernTreasury::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
