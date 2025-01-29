# typed: strong

module ModernTreasury
  module Models
    class BankSettings < ModernTreasury::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :backup_withholding_percentage

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :discarded_at

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enable_backup_withholding

      sig { returns(T::Boolean) }
      attr_accessor :live_mode

      sig { returns(String) }
      attr_accessor :object

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :privacy_opt_out

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
        ).void
      end
      def initialize(
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

      sig { returns(ModernTreasury::Models::BankSettings::Shape) }
      def to_h; end
    end
  end
end
