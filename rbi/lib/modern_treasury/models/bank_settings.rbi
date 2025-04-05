# typed: strong

module ModernTreasury
  module Models
    class BankSettings < ModernTreasury::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The percentage of backup withholding to apply to the legal entity.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :backup_withholding_percentage

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      # Whether backup withholding is enabled. See more here -
      #   https://www.irs.gov/businesses/small-businesses-self-employed/backup-withholding.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enable_backup_withholding

      # This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      # Cross River Bank specific setting to opt out of privacy policy.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :privacy_opt_out

      # It covers, among other types of insider loans, extensions of credit by a member
      #   bank to an executive officer, director, or principal shareholder of the member
      #   bank; a bank holding company of which the member bank is a subsidiary; and any
      #   other subsidiary of that bank holding company.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :regulation_o

      sig { returns(Time) }
      attr_accessor :updated_at

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
      ); end
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
      def to_hash; end
    end
  end
end
