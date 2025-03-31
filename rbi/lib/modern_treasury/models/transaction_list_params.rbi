# typed: strong

module ModernTreasury
  module Models
    class TransactionListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Filters transactions with an `as_of_date` starting on or before the specified
      #   date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_end

      sig { params(as_of_date_end: Date).void }
      attr_writer :as_of_date_end

      # Filters transactions with an `as_of_date` starting on or after the specified
      #   date (YYYY-MM-DD).
      sig { returns(T.nilable(Date)) }
      attr_reader :as_of_date_start

      sig { params(as_of_date_start: Date).void }
      attr_writer :as_of_date_start

      sig { returns(T.nilable(String)) }
      attr_reader :counterparty_id

      sig { params(counterparty_id: String).void }
      attr_writer :counterparty_id

      # Filters for transactions including the queried string in the description.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(String)) }
      attr_reader :direction

      sig { params(direction: String).void }
      attr_writer :direction

      # Specify `internal_account_id` if you wish to see transactions to/from a specific
      #   account.
      sig { returns(T.nilable(String)) }
      attr_reader :internal_account_id

      sig { params(internal_account_id: String).void }
      attr_writer :internal_account_id

      # For example, if you want to query for records with metadata key `Type` and value
      #   `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
      #   parameters.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :payment_type

      sig { params(payment_type: String).void }
      attr_writer :payment_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # Either `true` or `false`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :posted

      sig { params(posted: T::Boolean).void }
      attr_writer :posted

      sig { returns(T.nilable(String)) }
      attr_reader :transactable_type

      sig { params(transactable_type: String).void }
      attr_writer :transactable_type

      # Filters for transactions including the queried vendor id (an identifier given to
      #   transactions by the bank).
      sig { returns(T.nilable(String)) }
      attr_reader :vendor_id

      sig { params(vendor_id: String).void }
      attr_writer :vendor_id

      sig { returns(T.nilable(String)) }
      attr_reader :virtual_account_id

      sig { params(virtual_account_id: String).void }
      attr_writer :virtual_account_id

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
