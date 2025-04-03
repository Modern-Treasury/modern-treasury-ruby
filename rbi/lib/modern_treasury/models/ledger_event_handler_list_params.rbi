# typed: strong

module ModernTreasury
  module Models
    class LedgerEventHandlerListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   created_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :created_at

      sig { params(created_at: T::Hash[Symbol, Time]).void }
      attr_writer :created_at

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          after_cursor: T.nilable(String),
          created_at: T::Hash[Symbol, Time],
          metadata: T::Hash[Symbol, String],
          name: String,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        created_at: nil,
        metadata: nil,
        name: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              created_at: T::Hash[Symbol, Time],
              metadata: T::Hash[Symbol, String],
              name: String,
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
