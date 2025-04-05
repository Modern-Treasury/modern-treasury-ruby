# typed: strong

module ModernTreasury
  module Models
    class LegalEntityComplianceDetail < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # The issuer of the compliance token.
      sig { returns(String) }
      attr_accessor :issuer

      # This field will be true if this object exists in the live environment or false
      # if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # The timestamp when the compliance token expires.
      sig { returns(T.nilable(Time)) }
      attr_accessor :token_expires_at

      # The timestamp when the compliance token was issued.
      sig { returns(T.nilable(Time)) }
      attr_accessor :token_issued_at

      # The URL to the compliance token. (ex. provider portal URL)
      sig { returns(T.nilable(String)) }
      attr_accessor :token_url

      sig { returns(Time) }
      attr_accessor :updated_at

      # Whether entity corresponding to the compliance token has been validated.
      sig { returns(T::Boolean) }
      attr_accessor :validated

      # The timestamp when the entity was validated.
      sig { returns(T.nilable(Time)) }
      attr_accessor :validated_at

      sig do
        params(
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          issuer: String,
          live_mode: T::Boolean,
          object: String,
          token_expires_at: T.nilable(Time),
          token_issued_at: T.nilable(Time),
          token_url: T.nilable(String),
          updated_at: Time,
          validated: T::Boolean,
          validated_at: T.nilable(Time)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        discarded_at:,
        issuer:,
        live_mode:,
        object:,
        token_expires_at:,
        token_issued_at:,
        token_url:,
        updated_at:,
        validated:,
        validated_at:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              issuer: String,
              live_mode: T::Boolean,
              object: String,
              token_expires_at: T.nilable(Time),
              token_issued_at: T.nilable(Time),
              token_url: T.nilable(String),
              updated_at: Time,
              validated: T::Boolean,
              validated_at: T.nilable(Time)
            }
          )
      end
      def to_hash; end
    end
  end
end
