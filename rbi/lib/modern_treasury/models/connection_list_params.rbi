# typed: strong

module ModernTreasury
  module Models
    class ConnectionListParams < ModernTreasury::BaseModel
      extend ModernTreasury::Type::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :after_cursor

      # A string code representing the vendor (i.e. bank).
      sig { returns(T.nilable(String)) }
      attr_reader :entity

      sig { params(entity: String).void }
      attr_writer :entity

      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      # An identifier assigned by the vendor to your organization.
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
          request_options: T.any(ModernTreasury::RequestOptions, ModernTreasury::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        after_cursor: nil,
        entity: nil,
        per_page: nil,
        vendor_customer_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              after_cursor: T.nilable(String),
              entity: String,
              per_page: Integer,
              vendor_customer_id: String,
              request_options: ModernTreasury::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
