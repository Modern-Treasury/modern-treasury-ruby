# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::VirtualAccountSettings#create
    class VirtualAccountSettingCreateParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute allocation_type
      #   The method used to allocate virtual account numbers.
      #
      #   @return [String]
      required :allocation_type, String

      # @!attribute internal_account_id
      #   The ID of the internal account for the virtual account setting.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute allocation_identifier
      #   The prefix, suffix, or bank-assigned identifier for the virtual account numbers.
      #
      #   @return [String, nil]
      optional :allocation_identifier, String, nil?: true

      # @!attribute allocation_length
      #   The total length of generated virtual account numbers.
      #
      #   @return [Integer, nil]
      optional :allocation_length, Integer, nil?: true

      # @!attribute allocation_range_end
      #   The inclusive end of the virtual account number range.
      #
      #   @return [String, nil]
      optional :allocation_range_end, String, nil?: true

      # @!attribute allocation_range_start
      #   The inclusive start of the virtual account number range.
      #
      #   @return [String, nil]
      optional :allocation_range_start, String, nil?: true

      # @!attribute external_id
      #   A user-defined identifier for the virtual account setting.
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute generated_allocation_identifier_length
      #   The length of a generated virtual account setting prefix.
      #
      #   @return [Integer, nil]
      optional :generated_allocation_identifier_length, Integer, nil?: true

      # @!method initialize(allocation_type:, internal_account_id:, allocation_identifier: nil, allocation_length: nil, allocation_range_end: nil, allocation_range_start: nil, external_id: nil, generated_allocation_identifier_length: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::VirtualAccountSettingCreateParams} for more details.
      #
      #   @param allocation_type [String] The method used to allocate virtual account numbers.
      #
      #   @param internal_account_id [String] The ID of the internal account for the virtual account setting.
      #
      #   @param allocation_identifier [String, nil] The prefix, suffix, or bank-assigned identifier for the virtual account numbers.
      #
      #   @param allocation_length [Integer, nil] The total length of generated virtual account numbers.
      #
      #   @param allocation_range_end [String, nil] The inclusive end of the virtual account number range.
      #
      #   @param allocation_range_start [String, nil] The inclusive start of the virtual account number range.
      #
      #   @param external_id [String, nil] A user-defined identifier for the virtual account setting.
      #
      #   @param generated_allocation_identifier_length [Integer, nil] The length of a generated virtual account setting prefix.
      #
      #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
