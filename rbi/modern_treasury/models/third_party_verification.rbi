# typed: strong

module ModernTreasury
  module Models
    class ThirdPartyVerification < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::ThirdPartyVerification,
            ModernTreasury::Internal::AnyHash
          )
        end

      # The outcome of the verification. One of `passed` or `failed`.
      sig { returns(ModernTreasury::ThirdPartyVerification::Outcome::OrSymbol) }
      attr_accessor :outcome

      # The vendor that performed the verification, e.g. `persona`.
      sig { returns(ModernTreasury::ThirdPartyVerification::Vendor::OrSymbol) }
      attr_accessor :vendor

      # The identification of the third party verification in `vendor`'s system.
      sig { returns(String) }
      attr_accessor :vendor_verification_id

      # The category of verification performed.
      sig do
        returns(
          ModernTreasury::ThirdPartyVerification::VerificationCategory::OrSymbol
        )
      end
      attr_accessor :verification_category

      # The method used to perform the verification.
      sig { returns(String) }
      attr_accessor :verification_method

      # The timestamp when the verification was performed.
      sig { returns(Time) }
      attr_accessor :verification_time

      # An optional comment about the verification.
      sig { returns(T.nilable(String)) }
      attr_accessor :comment

      sig do
        params(
          outcome: ModernTreasury::ThirdPartyVerification::Outcome::OrSymbol,
          vendor: ModernTreasury::ThirdPartyVerification::Vendor::OrSymbol,
          vendor_verification_id: String,
          verification_category:
            ModernTreasury::ThirdPartyVerification::VerificationCategory::OrSymbol,
          verification_method: String,
          verification_time: Time,
          comment: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The outcome of the verification. One of `passed` or `failed`.
        outcome:,
        # The vendor that performed the verification, e.g. `persona`.
        vendor:,
        # The identification of the third party verification in `vendor`'s system.
        vendor_verification_id:,
        # The category of verification performed.
        verification_category:,
        # The method used to perform the verification.
        verification_method:,
        # The timestamp when the verification was performed.
        verification_time:,
        # An optional comment about the verification.
        comment: nil
      )
      end

      sig do
        override.returns(
          {
            outcome: ModernTreasury::ThirdPartyVerification::Outcome::OrSymbol,
            vendor: ModernTreasury::ThirdPartyVerification::Vendor::OrSymbol,
            vendor_verification_id: String,
            verification_category:
              ModernTreasury::ThirdPartyVerification::VerificationCategory::OrSymbol,
            verification_method: String,
            verification_time: Time,
            comment: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The outcome of the verification. One of `passed` or `failed`.
      module Outcome
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ThirdPartyVerification::Outcome)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PASSED =
          T.let(
            :passed,
            ModernTreasury::ThirdPartyVerification::Outcome::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            ModernTreasury::ThirdPartyVerification::Outcome::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ThirdPartyVerification::Outcome::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The vendor that performed the verification, e.g. `persona`.
      module Vendor
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, ModernTreasury::ThirdPartyVerification::Vendor)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERSONA =
          T.let(
            :persona,
            ModernTreasury::ThirdPartyVerification::Vendor::TaggedSymbol
          )
        MIDDESK =
          T.let(
            :middesk,
            ModernTreasury::ThirdPartyVerification::Vendor::TaggedSymbol
          )
        ALLOY =
          T.let(
            :alloy,
            ModernTreasury::ThirdPartyVerification::Vendor::TaggedSymbol
          )
        SUMSUB =
          T.let(
            :sumsub,
            ModernTreasury::ThirdPartyVerification::Vendor::TaggedSymbol
          )
        VERIFF =
          T.let(
            :veriff,
            ModernTreasury::ThirdPartyVerification::Vendor::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ThirdPartyVerification::Vendor::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The category of verification performed.
      module VerificationCategory
        extend ModernTreasury::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              ModernTreasury::ThirdPartyVerification::VerificationCategory
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEGAL_NAME =
          T.let(
            :legal_name,
            ModernTreasury::ThirdPartyVerification::VerificationCategory::TaggedSymbol
          )
        DATE_OF_BIRTH =
          T.let(
            :date_of_birth,
            ModernTreasury::ThirdPartyVerification::VerificationCategory::TaggedSymbol
          )
        ADDRESS =
          T.let(
            :address,
            ModernTreasury::ThirdPartyVerification::VerificationCategory::TaggedSymbol
          )
        GOVERNMENT_ID_NUMBER =
          T.let(
            :government_id_number,
            ModernTreasury::ThirdPartyVerification::VerificationCategory::TaggedSymbol
          )
        ADVERSE_MEDIA =
          T.let(
            :adverse_media,
            ModernTreasury::ThirdPartyVerification::VerificationCategory::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              ModernTreasury::ThirdPartyVerification::VerificationCategory::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
