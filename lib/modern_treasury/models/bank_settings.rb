# frozen_string_literal: true

module ModernTreasury
  module Models
    class BankSettings < ModernTreasury::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute backup_withholding_percentage
      #   The percentage of backup withholding to apply to the legal entity.
      #
      #   @return [Integer]
      required :backup_withholding_percentage, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute enable_backup_withholding
      #   Whether backup withholding is enabled. See more here - https://www.irs.gov/businesses/small-businesses-self-employed/backup-withholding.
      #
      #   @return [Boolean]
      required :enable_backup_withholding, ModernTreasury::BooleanModel

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute privacy_opt_out
      #   Cross River Bank specific setting to opt out of privacy policy.
      #
      #   @return [Boolean]
      required :privacy_opt_out, ModernTreasury::BooleanModel

      # @!attribute regulation_o
      #   It covers, among other types of insider loans, extensions of credit by a member bank to an executive officer, director, or principal shareholder of the member bank; a bank holding company of which the member bank is a subsidiary; and any other subsidiary of that bank holding company.
      #
      #   @return [Boolean]
      required :regulation_o, ModernTreasury::BooleanModel

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param backup_withholding_percentage [Integer, nil] The percentage of backup withholding to apply to the legal entity.
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param discarded_at [String, nil]
      #   #
      #   # @param enable_backup_withholding [Boolean, nil] Whether backup withholding is enabled. See more here -
      #   #   https://www.irs.gov/businesses/small-businesses-self-employed/backup-withholding.
      #   #
      #   # @param live_mode [Boolean] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String]
      #   #
      #   # @param privacy_opt_out [Boolean, nil] Cross River Bank specific setting to opt out of privacy policy.
      #   #
      #   # @param regulation_o [Boolean, nil] It covers, among other types of insider loans, extensions of credit by a member
      #   #   bank to an executive officer, director, or principal shareholder of the member
      #   #   bank; a bank holding company of which the member bank is a subsidiary; and any
      #   #   other subsidiary of that bank holding company.
      #   #
      #   # @param updated_at [String]
      #   #
      #   def initialize(
      #     id:,
      #     backup_withholding_percentage:,
      #     created_at:,
      #     discarded_at:,
      #     enable_backup_withholding:,
      #     live_mode:,
      #     object:,
      #     privacy_opt_out:,
      #     regulation_o:,
      #     updated_at:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void
    end
  end
end
