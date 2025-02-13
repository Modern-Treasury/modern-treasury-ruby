# typed: strong

module ModernTreasury
  module Models
    class PaperItemListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      def after_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def after_cursor=(_)
      end

      sig { returns(T.nilable(Date)) }
      def deposit_date_end
      end

      sig { params(_: Date).returns(Date) }
      def deposit_date_end=(_)
      end

      sig { returns(T.nilable(Date)) }
      def deposit_date_start
      end

      sig { params(_: Date).returns(Date) }
      def deposit_date_start=(_)
      end

      sig { returns(T.nilable(String)) }
      def lockbox_number
      end

      sig { params(_: String).returns(String) }
      def lockbox_number=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def per_page
      end

      sig { params(_: Integer).returns(Integer) }
      def per_page=(_)
      end

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
