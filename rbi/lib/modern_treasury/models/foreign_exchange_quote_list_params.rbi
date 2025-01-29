# typed: strong

module ModernTreasury
  module Models
    class ForeignExchangeQuoteListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            base_currency: String,
            effective_at_end: Date,
            effective_at_start: Date,
            expires_at: Time,
            internal_account_id: String,
            metadata: T::Hash[Symbol, String],
            per_page: Integer,
            target_currency: String
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :base_currency

      sig { params(base_currency: String).void }
      attr_writer :base_currency

      sig { returns(T.nilable(Date)) }
      attr_reader :effective_at_end

      sig { params(effective_at_end: Date).void }
      attr_writer :effective_at_end

      sig { returns(T.nilable(Date)) }
      attr_reader :effective_at_start

      sig { params(effective_at_start: Date).void }
      attr_writer :effective_at_start

      sig { returns(T.nilable(Time)) }
      attr_reader :expires_at

      sig { params(expires_at: Time).void }
      attr_writer :expires_at

      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

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
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        base_currency: nil,
        effective_at_end: nil,
        effective_at_start: nil,
        expires_at: nil,
        internal_account_id: nil,
        metadata: nil,
        per_page: nil,
        target_currency: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::ForeignExchangeQuoteListParams::Shape) }
      def to_h; end
    end
  end
end
