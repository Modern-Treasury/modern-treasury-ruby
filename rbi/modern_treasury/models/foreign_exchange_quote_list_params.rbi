# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, ModernTreasury::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Currency to convert, often called the "sell" currency.
      sig { returns(T.nilable(String)) }
      attr_reader :base_currency

      sig { params(base_currency: String).void }
      attr_writer :base_currency

      # An inclusive upper bound for searching effective_at
      sig { returns(T.nilable(Date)) }
      attr_reader :effective_at_end

      sig { params(effective_at_end: Date).void }
      attr_writer :effective_at_end

      # An inclusive lower bound for searching effective_at
      sig { returns(T.nilable(Date)) }
      attr_reader :effective_at_start

      sig { params(effective_at_start: Date).void }
      attr_writer :effective_at_start

      # The timestamp until which the quote must be booked by.
      sig { returns(T.nilable(Time)) }
      attr_reader :expires_at

      sig { params(expires_at: Time).void }
      attr_writer :expires_at

      # The ID for the `InternalAccount` this quote is associated with.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      # For example, if you want to query for records with metadata key `Type` and value
      # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      # parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Currency to convert the `base_currency` to, often called the "buy" currency.
      sig { returns(T.nilable(String)) }
      attr_reader :target_currency

      sig { params(target_currency: String).void }
      attr_writer :target_currency

      sig do
        params(
          after_cursor: T.nilable(String),
          base_currency: String,
          effective_at_end: Date,
          effective_at_start: Date,
          expires_at: Time,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          target_currency: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Currency to convert, often called the "sell" currency.
        base_currency: nil,
        # An inclusive upper bound for searching effective_at
        effective_at_end: nil,
        # An inclusive lower bound for searching effective_at
        effective_at_start: nil,
        # The timestamp until which the quote must be booked by.
        expires_at: nil,
        # The ID for the `InternalAccount` this quote is associated with.
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        per_page: nil,
        # Currency to convert the `base_currency` to, often called the "buy" currency.
        target_currency: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after_cursor: T.nilable(String),
            base_currency: String,
            effective_at_end: Date,
            effective_at_start: Date,
            expires_at: Time,
            internal_account_id: String,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            target_currency: String,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
