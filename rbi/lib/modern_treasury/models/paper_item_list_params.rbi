# typed: strong

module ModernTreasury
  module Models
    class PaperItemListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            after_cursor: T.nilable(String),
            deposit_date_end: Date,
            deposit_date_start: Date,
            lockbox_number: String,
            per_page: Integer
          },
          ModernTreasury::RequestParameters::Shape
        )
      end

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
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        deposit_date_end: nil,
        deposit_date_start: nil,
        lockbox_number: nil,
        per_page: nil,
        request_options: {}
      ); end

      sig { returns(ModernTreasury::Models::PaperItemListParams::Shape) }
      def to_h; end
    end
  end
end
