# frozen_string_literal: true

module ModernTreasury
  module Models
    class ThirdPartyVerification < ModernTreasury::Internal::Type::BaseModel
      # @!attribute outcome
      #   The outcome of the verification. One of `passed` or `failed`.
      #
      #   @return [Symbol, ModernTreasury::Models::ThirdPartyVerification::Outcome]
      required :outcome, enum: -> { ModernTreasury::ThirdPartyVerification::Outcome }

      # @!attribute vendor
      #   The vendor that performed the verification, e.g. `persona`.
      #
      #   @return [Symbol, ModernTreasury::Models::ThirdPartyVerification::Vendor]
      required :vendor, enum: -> { ModernTreasury::ThirdPartyVerification::Vendor }

      # @!attribute vendor_verification_id
      #   The identification of the third party verification in `vendor`'s system.
      #
      #   @return [String]
      required :vendor_verification_id, String

      # @!attribute verification_category
      #   The category of verification performed.
      #
      #   @return [Symbol, ModernTreasury::Models::ThirdPartyVerification::VerificationCategory]
      required :verification_category, enum: -> { ModernTreasury::ThirdPartyVerification::VerificationCategory }

      # @!attribute verification_method
      #   The method used to perform the verification.
      #
      #   @return [String]
      required :verification_method, String

      # @!attribute verification_time
      #   The timestamp when the verification was performed.
      #
      #   @return [Time]
      required :verification_time, Time

      # @!attribute comment
      #   An optional comment about the verification.
      #
      #   @return [String, nil]
      optional :comment, String, nil?: true

      # @!method initialize(outcome:, vendor:, vendor_verification_id:, verification_category:, verification_method:, verification_time:, comment: nil)
      #   @param outcome [Symbol, ModernTreasury::Models::ThirdPartyVerification::Outcome] The outcome of the verification. One of `passed` or `failed`.
      #
      #   @param vendor [Symbol, ModernTreasury::Models::ThirdPartyVerification::Vendor] The vendor that performed the verification, e.g. `persona`.
      #
      #   @param vendor_verification_id [String] The identification of the third party verification in `vendor`'s system.
      #
      #   @param verification_category [Symbol, ModernTreasury::Models::ThirdPartyVerification::VerificationCategory] The category of verification performed.
      #
      #   @param verification_method [String] The method used to perform the verification.
      #
      #   @param verification_time [Time] The timestamp when the verification was performed.
      #
      #   @param comment [String, nil] An optional comment about the verification.

      # The outcome of the verification. One of `passed` or `failed`.
      #
      # @see ModernTreasury::Models::ThirdPartyVerification#outcome
      module Outcome
        extend ModernTreasury::Internal::Type::Enum

        PASSED = :passed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The vendor that performed the verification, e.g. `persona`.
      #
      # @see ModernTreasury::Models::ThirdPartyVerification#vendor
      module Vendor
        extend ModernTreasury::Internal::Type::Enum

        PERSONA = :persona
        MIDDESK = :middesk
        ALLOY = :alloy
        SUMSUB = :sumsub
        VERIFF = :veriff

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The category of verification performed.
      #
      # @see ModernTreasury::Models::ThirdPartyVerification#verification_category
      module VerificationCategory
        extend ModernTreasury::Internal::Type::Enum

        LEGAL_NAME = :legal_name
        DATE_OF_BIRTH = :date_of_birth
        ADDRESS = :address
        GOVERNMENT_ID_NUMBER = :government_id_number
        ADVERSE_MEDIA = :adverse_media

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
