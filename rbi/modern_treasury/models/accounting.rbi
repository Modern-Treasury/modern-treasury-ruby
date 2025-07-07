# typed: strong

module ModernTreasury
  module Models
    class Accounting < ModernTreasury::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(ModernTreasury::Accounting, ModernTreasury::Internal::AnyHash)
        end

      # The ID of one of your accounting categories. Note that these will only be
      # accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # The ID of one of the class objects in your accounting system. Class objects
      # track segments of your business independent of client or project. Note that
      # these will only be accessible if your accounting system has been connected.
      sig { returns(T.nilable(String)) }
      attr_accessor :class_id

      sig do
        params(
          account_id: T.nilable(String),
          class_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of one of your accounting categories. Note that these will only be
        # accessible if your accounting system has been connected.
        account_id: nil,
        # The ID of one of the class objects in your accounting system. Class objects
        # track segments of your business independent of client or project. Note that
        # these will only be accessible if your accounting system has been connected.
        class_id: nil
      )
      end

      sig do
        override.returns(
          { account_id: T.nilable(String), class_id: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
