# typed: strong

module ModernTreasury
  module Resources
    class PaperItems
      # Get details on a single paper item.
      sig do
        params(
          id: String,
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Models::PaperItem)
      end
      def retrieve(
        # id
        id,
        request_options: {}
      )
      end

      # Get a list of all paper items.
      sig do
        params(
          after_cursor: T.nilable(String),
          deposit_date_end: Date,
          deposit_date_start: Date,
          lockbox_number: String,
          per_page: Integer,
          request_options: T.nilable(
            T.any(
              ModernTreasury::RequestOptions,
              ModernTreasury::Internal::AnyHash
            )
          )
        )
          .returns(ModernTreasury::Internal::Page[ModernTreasury::Models::PaperItem])
      end
      def list(
        after_cursor: nil,
        # Specify an inclusive end date (YYYY-MM-DD) when filtering by deposit_date
        deposit_date_end: nil,
        # Specify an inclusive start date (YYYY-MM-DD) when filtering by deposit_date
        deposit_date_start: nil,
        # Specify `lockbox_number` if you wish to see paper items that are associated with
        #   a specific lockbox number.
        lockbox_number: nil,
        per_page: nil,
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
