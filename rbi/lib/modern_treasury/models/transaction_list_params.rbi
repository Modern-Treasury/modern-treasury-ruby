# typed: strong

module ModernTreasury
  module Models
    class TransactionListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      # Filters transactions with an `as_of_date` starting on or before the specified
      #   date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      def as_of_date_end
      end

      sig { params(_: Date).returns(Date) }
      def as_of_date_end=(_)
      end

      # Filters transactions with an `as_of_date` starting on or after the specified
      #   date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      def as_of_date_start
      end

      sig { params(_: Date).returns(Date) }
      def as_of_date_start=(_)
      end

      sig { returns(T.nilable(String)) }
      def counterparty_id
      end

      sig { params(_: String).returns(String) }
      def counterparty_id=(_)
      end

      # Filters for transactions including the queried string in the description.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def direction
      end

      sig { params(_: String).returns(String) }
      def direction=(_)
      end

      # Specify `internal_account_id` if you wish to see transactions to/from a specific
      #   account.
      sig { returns(T.nilable(String)) }
      def internal_account_id
      end

      sig { params(_: String).returns(String) }
      def internal_account_id=(_)
      end

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_type
      end

      sig { params(_: String).returns(String) }
      def payment_type=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

      # Either `true` or `false`.
      sig { returns(T.nilable(T::Boolean)) }
      def posted
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def posted=(_)
      end

      sig { returns(T.nilable(String)) }
      def transactable_type
      end

      sig { params(_: String).returns(String) }
      def transactable_type=(_)
      end

      # Filters for transactions including the queried vendor id (an identifier given to
      #   transactions by the bank).
      sig { returns(T.nilable(String)) }
      def vendor_id
      end

      sig { params(_: String).returns(String) }
      def vendor_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def virtual_account_id
      end

      sig { params(_: String).returns(String) }
      def virtual_account_id=(_)
      end

      sig do
        params(
          after_cursor: T.nilable(String),
          as_of_date_end: Date,
          as_of_date_start: Date,
          counterparty_id: String,
          description: String,
          direction: String,
          internal_account_id: String,
          metadata: T::Hash[Symbol, String],
          payment_type: String,
          per_page: Integer,
          posted: T::Boolean,
          transactable_type: String,
          vendor_id: String,
          virtual_account_id: String,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        as_of_date_end: nil,
        as_of_date_start: nil,
        counterparty_id: nil,
        description: nil,
        direction: nil,
        internal_account_id: nil,
        metadata: nil,
        payment_type: nil,
        per_page: nil,
        posted: nil,
        transactable_type: nil,
        vendor_id: nil,
        virtual_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              as_of_date_end: Date,
              as_of_date_start: Date,
              counterparty_id: String,
              description: String,
              direction: String,
              internal_account_id: String,
              metadata: T::Hash[Symbol, String],
              payment_type: String,
              per_page: Integer,
              posted: T::Boolean,
              transactable_type: String,
              vendor_id: String,
              virtual_account_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
