# typed: strong

module ModernTreasury
  module Models
    class PaperItemListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(Date)) }
      attr_reader :deposit_date_end

      sig { params(deposit_date_end: Date).void }
      attr_writer :deposit_date_end

      sig { returns(T.nilable(Date)) }
      attr_reader :deposit_date_start

      sig { params(deposit_date_start: Date).void }
      attr_writer :deposit_date_start

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
          request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        after_cursor: nil,
        deposit_date_end: nil,
        deposit_date_start: nil,
        lockbox_number: nil,
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
      def to_hash
      end
    end
  end
end
