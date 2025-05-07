# typed: strong

module ModernTreasury
  module Resources
    class Transactions
      sig { returns(ModernTreasury::Resources::Transactions::LineItems) }
      attr_reader :line_items

      # create transaction
      sig do
        params(
          amount: Integer,
          as_of_date: T.nilable(Date),
          direction: String,
          internal_account_id: String,
          vendor_code: T.nilable(String),
          vendor_code_type: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          posted: T::Boolean,
          type:
            T.nilable(ModernTreasury::TransactionCreateParams::Type::OrSymbol),
          vendor_description: T.nilable(String),
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Transaction)
      end
      def create(
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount:,
        # The date on which the transaction occurred.
        as_of_date:,
        # Either `credit` or `debit`.
        direction:,
        # The ID of the relevant Internal Account.
        internal_account_id:,
        # When applicable, the bank-given code that determines the transaction's category.
        # For most banks this is the BAI2/BTRS transaction code.
        vendor_code:,
        # The type of `vendor_code` being reported. Can be one of `bai2`, `bankprov`,
        # `bnk_dev`, `cleartouch`, `currencycloud`, `cross_river`, `dc_bank`, `dwolla`,
        # `evolve`, `goldman_sachs`, `iso20022`, `jpmc`, `mx`, `signet`, `silvergate`,
        # `swift`, `us_bank`, or others.
        vendor_code_type:,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil,
        # This field will be `true` if the transaction has posted to the account.
        posted: nil,
        # The type of the transaction. Examples could be
        # `card, `ach`, `wire`, `check`, `rtp`, `book`, or `sen`.
        type: nil,
        # The transaction detail text that often appears in on your bank statement and in
        # your banking portal.
        vendor_description: nil,
        request_options: {}
      )
      end

      # Get details on a single transaction.
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Transaction)
      end
      def retrieve(
        # Transaction ID
        id,
        request_options: {}
      )
      end

      # Update a single transaction.
      sig do
        params(
          id: String,
          metadata: T::Hash[Symbol, String],
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Transaction)
      end
      def update(
        # Transaction ID
        id,
        # Additional data in the form of key-value pairs. Pairs can be removed by passing
        # an empty string or `null` as the value.
        metadata: nil,
        request_options: {}
      )
      end

      # Get a list of all transactions.
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
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(ModernTreasury::Internal::Page[ModernTreasury::Transaction])
      end
      def list(
        after_cursor: nil,
        # Filters transactions with an `as_of_date` starting on or before the specified
        # date (YYYY-MM-DD).
        as_of_date_end: nil,
        # Filters transactions with an `as_of_date` starting on or after the specified
        # date (YYYY-MM-DD).
        as_of_date_start: nil,
        counterparty_id: nil,
        # Filters for transactions including the queried string in the description.
        description: nil,
        direction: nil,
        # Specify `internal_account_id` if you wish to see transactions to/from a specific
        # account.
        internal_account_id: nil,
        # For example, if you want to query for records with metadata key `Type` and value
        # `Loan`, the query would be `metadata%5BType%5D=Loan`. This encodes the query
        # parameters.
        metadata: nil,
        payment_type: nil,
        per_page: nil,
        # Either `true` or `false`.
        posted: nil,
        transactable_type: nil,
        # Filters for transactions including the queried vendor id (an identifier given to
        # transactions by the bank).
        vendor_id: nil,
        virtual_account_id: nil,
        request_options: {}
      )
      end

      # delete transaction
      sig do
        params(
          id: String,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Transaction ID
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ModernTreasury::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
