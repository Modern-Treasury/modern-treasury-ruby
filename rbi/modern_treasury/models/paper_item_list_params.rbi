# typed: strong

module ModernTreasury
  module Models
    class PaperItemListParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
      sig { returns(T.nilable(Date)) }
      attr_reader :deposit_date_end

      sig { params(deposit_date_end: Date).void }
      attr_writer :deposit_date_end

      # Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
      sig { returns(T.nilable(Date)) }
      attr_reader :deposit_date_start

      sig { params(deposit_date_start: Date).void }
      attr_writer :deposit_date_start

      # Specify `lockbox_number` if you wish to see paper items that are associated with
      # a specific lockbox number.
      sig { returns(T.nilable(String)) }
      attr_reader :lockbox_number

      sig { params(lockbox_number: String).void }
      attr_writer :lockbox_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          after_cursor: T.nilable(String),
          deposit_date_end: Date,
          deposit_date_start: Date,
          lockbox_number: String,
          per_page: Integer,
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        # Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
        deposit_date_end: nil,
        # Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
        deposit_date_start: nil,
        # Specify `lockbox_number` if you wish to see paper items that are associated with
        # a specific lockbox number.
        lockbox_number: nil,
        per_page: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              deposit_date_end: Date,
              deposit_date_start: Date,
              lockbox_number: String,
              per_page: Integer,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
