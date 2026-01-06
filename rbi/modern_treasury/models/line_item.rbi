# typed: strong

module ModernTreasury
  module Models
    class LineItem < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::LineItem, ModernTreasury::Internal::AnyHash)
        end

      # Value in specified currency's smallest unit. e.g. $10 would be represented
      # as 1000.
      sig { returns(Integer) }
      attr_accessor :amount

      # The ID of one of your accounting categories. Note that these will only be
      # accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      attr_accessor :accounting_category_id

      # A free-form description of the line item.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Additional data represented as key-value pairs. Both the key and value must be
      # strings.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        params(
          amount: Integer,
          accounting_category_id: T.nilable(String),
          description: T.nilable(String),
          metadata: T::Hash[Symbol, String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Value in specified currency's smallest unit. e.g. $10 would be represented
        # as 1000.
        amount:,
        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        accounting_category_id: nil,
        # A free-form description of the line item.
        description: nil,
        # Additional data represented as key-value pairs. Both the key and value must be
        # strings.
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            amount: Integer,
            accounting_category_id: T.nilable(String),
            description: T.nilable(String),
            metadata: T::Hash[Symbol, String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
