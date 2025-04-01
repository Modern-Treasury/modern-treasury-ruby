# typed: strong

module ModernTreasury
  module Models
    class LedgerListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # If you have specific IDs to retrieve in bulk, you can pass them as query
      #   parameters delimited with `id[]=`, for example `?id[]=123&id[]=abc`.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Use `gt` (>), `gte` (>=), `lt` (<), `lte` (<=), or `eq` (=) to filter by the
      #   posted at timestamp. For example, for all times after Jan 1 2000 12:00 UTC, use
      #   updated_at%5Bgt%5D=2000-01-01T12:00:00Z.
      sig { returns(T.nilable(T::Hash[Symbol, Time])) }
      attr_reader :updated_at

      sig { params(updated_at: T::Hash[Symbol, Time]).void }
      attr_writer :updated_at

      sig do
        params(
          id: T::Array[String],
          after_cursor: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          per_page: Integer,
          updated_at: T::Hash[Symbol, Time],
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id: nil,
        after_cursor: nil,
        metadata: nil,
        per_page: nil,
        updated_at: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              id: T::Array[String],
              after_cursor: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              per_page: Integer,
              updated_at: T::Hash[Symbol, Time],
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
