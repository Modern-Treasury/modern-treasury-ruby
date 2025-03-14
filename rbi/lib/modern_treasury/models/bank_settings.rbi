# typed: strong

module ModernTreasury
  module Models
    class BankSettings < ModernTreasury::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The percentage of backup withholding to apply to the legal entity.
      sig { returns(T.nilable(Integer)) }
      def backup_withholding_percentage
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def backup_withholding_percentage=(_)
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

      # Whether backup withholding is enabled. See more here -
      #   https://www.irs.gov/businesses/small-businesses-self-employed/backup-withholding.
      sig { returns(T.nilable(T::Boolean)) }
      def enable_backup_withholding
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def enable_backup_withholding=(_)
      end

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
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

      # Cross River Bank specific setting to opt out of privacy policy.
      sig { returns(T.nilable(T::Boolean)) }
      def privacy_opt_out
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def privacy_opt_out=(_)
      end

      # It covers, among other types of insider loans, extensions of credit by a member
      #   bank to an executive officer, director, or principal shareholder of the member
      #   bank; a bank holding company of which the member bank is a subsidiary; and any
      #   other subsidiary of that bank holding company.
      sig { returns(T.nilable(T::Boolean)) }
      def regulation_o
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def regulation_o=(_)
      end

      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      sig do
        params(
          id: String,
          backup_withholding_percentage: T.nilable(Integer),
          created_at: Time,
          discarded_at: T.nilable(Time),
          enable_backup_withholding: T.nilable(T::Boolean),
          live_mode: T::Boolean,
          object: String,
          privacy_opt_out: T.nilable(T::Boolean),
          regulation_o: T.nilable(T::Boolean),
          updated_at: Time
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        backup_withholding_percentage:,
        created_at:,
        discarded_at:,
        enable_backup_withholding:,
        live_mode:,
        object:,
        privacy_opt_out:,
        regulation_o:,
        updated_at:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              backup_withholding_percentage: T.nilable(Integer),
              created_at: Time,
              discarded_at: T.nilable(Time),
              enable_backup_withholding: T.nilable(T::Boolean),
              live_mode: T::Boolean,
              object: String,
              privacy_opt_out: T.nilable(T::Boolean),
              regulation_o: T.nilable(T::Boolean),
              updated_at: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
