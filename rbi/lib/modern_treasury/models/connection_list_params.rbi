# typed: strong

module ModernTreasury
  module Models
    class ConnectionListParams < ModernTreasury::BaseModel
      extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      Shape = T.type_alias do
        T.all(
          {after_cursor: T.nilable(String), entity: String, per_page: Integer, vendor_customer_id: String},
          ModernTreasury::RequestParameters::Shape
        )
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      sig { returns(T.nilable(String)) }
      attr_reader :entity

      sig { params(entity: String).void }
      attr_writer :entity

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig { returns(T.nilable(String)) }
      attr_reader :vendor_customer_id

      sig { params(vendor_customer_id: String).void }
      attr_writer :vendor_customer_id

      sig do
        params(
          after_cursor: T.nilable(String),
          entity: String,
          per_page: Integer,
          vendor_customer_id: String,
          request_options: ModernTreasury::RequestOpts
        ).void
      end
      def initialize(
        after_cursor: nil,
        entity: nil,
        per_page: nil,
        vendor_customer_id: nil,
        request_options: {}
      )
      end

      sig { returns(ModernTreasury::Models::ConnectionListParams::Shape) }
      def to_h; end
    end
  end
end
