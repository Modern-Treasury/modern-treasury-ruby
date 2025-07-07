# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::ForeignExchangeQuotes#create
    class ForeignExchangeQuote < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute effective_at
      #   The timestamp until when the quoted rate is valid.
      #
      #   @return [Time]
      required :effective_at, Time

      # @!attribute expires_at
      #   The timestamp until which the quote must be booked by.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute foreign_exchange_indicator
      #   Either `fixed_to_variable` if the `base_amount` was specified, or
      #   `variable_to_fixed` if the `target_amount` was specified when requesting the
      #   quote.
      #
      #   @return [String]
      required :foreign_exchange_indicator, String

      # @!attribute foreign_exchange_rate
      #   The serialized rate information represented by this quote.
      #
      #   @return [ModernTreasury::Models::ForeignExchangeRate]
      required :foreign_exchange_rate, -> { ModernTreasury::ForeignExchangeRate }

      # @!attribute internal_account_id
      #   The ID for the `InternalAccount` this quote is associated with.
      #
      #   @return [String]
      required :internal_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional data represented as key-value pairs. Both the key and value must be
      #   strings.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, ModernTreasury::Internal::Type::HashOf[String]

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute vendor_id
      #   This vendor assigned ID for this quote.
      #
      #   @return [String, nil]
      optional :vendor_id, String

      # @!method initialize(id:, created_at:, effective_at:, expires_at:, foreign_exchange_indicator:, foreign_exchange_rate:, internal_account_id:, live_mode:, metadata:, object:, updated_at:, vendor_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::ForeignExchangeQuote} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param effective_at [Time] The timestamp until when the quoted rate is valid.
      #
      #   @param expires_at [Time] The timestamp until which the quote must be booked by.
      #
      #   @param foreign_exchange_indicator [String] Either `fixed_to_variable` if the `base_amount` was specified, or `variable_to_f
      #
      #   @param foreign_exchange_rate [ModernTreasury::Models::ForeignExchangeRate] The serialized rate information represented by this quote.
      #
      #   @param internal_account_id [String] The ID for the `InternalAccount` this quote is associated with.
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param metadata [Hash{Symbol=>String}] Additional data represented as key-value pairs. Both the key and value must be s
      #
      #   @param object [String]
      #
      #   @param updated_at [Time]
      #
      #   @param vendor_id [String] This vendor assigned ID for this quote.
    end
  end
end
