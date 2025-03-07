# typed: strong

module ModernTreasury
  module Models
    class Connection < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def discarded_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def discarded_at=(_)
      end

      sig { returns(T::Boolean) }
      def live_mode
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def live_mode=(_)
      end

      sig { returns(String) }
      def object
      end

      sig { params(_: String).returns(String) }
      def object=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def vendor_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def vendor_customer_id=(_)
      end

      sig { returns(String) }
      def vendor_id
      end

      sig { params(_: String).returns(String) }
      def vendor_id=(_)
      end

      sig { returns(String) }
      def vendor_name
      end

      sig { params(_: String).returns(String) }
      def vendor_name=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          discarded_at: T.nilable(Time),
          live_mode: T::Boolean,
          object: String,
          updated_at: Time,
          vendor_customer_id: T.nilable(String),
          vendor_id: String,
          vendor_name: String
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        discarded_at:,
        live_mode:,
        object:,
        updated_at:,
        vendor_customer_id:,
        vendor_id:,
        vendor_name:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              discarded_at: T.nilable(Time),
              live_mode: T::Boolean,
              object: String,
              updated_at: Time,
              vendor_customer_id: T.nilable(String),
              vendor_id: String,
              vendor_name: String
            }
          )
      end
      def to_hash
      end
    end
  end
end
