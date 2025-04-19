# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityComplianceDetail < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute issuer
      #   The issuer of the compliance token.
      #
      #   @return [String]
      required :issuer, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute token_expires_at
      #   The timestamp when the compliance token expires.
      #
      #   @return [Time, nil]
      required :token_expires_at, Time, nil?: true

      # @!attribute token_issued_at
      #   The timestamp when the compliance token was issued.
      #
      #   @return [Time, nil]
      required :token_issued_at, Time, nil?: true

      # @!attribute token_url
      #   The URL to the compliance token. (ex. provider portal URL)
      #
      #   @return [String, nil]
      required :token_url, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute validated
      #   Whether entity corresponding to the compliance token has been validated.
      #
      #   @return [Boolean]
      required :validated, ModernTreasury::Internal::Type::Boolean

      # @!attribute validated_at
      #   The timestamp when the entity was validated.
      #
      #   @return [Time, nil]
      required :validated_at, Time, nil?: true

      # @!method initialize(id:, created_at:, discarded_at:, issuer:, live_mode:, object:, token_expires_at:, token_issued_at:, token_url:, updated_at:, validated:, validated_at:)
      #   @param id [String]
      #   @param created_at [Time]
      #   @param discarded_at [Time, nil]
      #   @param issuer [String]
      #   @param live_mode [Boolean]
      #   @param object [String]
      #   @param token_expires_at [Time, nil]
      #   @param token_issued_at [Time, nil]
      #   @param token_url [String, nil]
      #   @param updated_at [Time]
      #   @param validated [Boolean]
      #   @param validated_at [Time, nil]
    end
  end
end
