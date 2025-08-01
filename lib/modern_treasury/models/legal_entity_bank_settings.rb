# frozen_string_literal: true

module ModernTreasury
  module Models
    class LegalEntityBankSettings < ModernTreasury::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute backup_withholding_percentage
      #   The percentage of backup withholding to apply to the legal entity.
      #
      #   @return [Integer, nil]
      required :backup_withholding_percentage, Integer, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #
      #   @return [Time, nil]
      required :discarded_at, Time, nil?: true

      # @!attribute enable_backup_withholding
      #   Whether backup withholding is enabled. See more here -
      #   https://www.irs.gov/businesses/small-businesses-self-employed/backup-withholding.
      #
      #   @return [Boolean, nil]
      required :enable_backup_withholding, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false
      #   if it exists in the test environment.
      #
      #   @return [Boolean]
      required :live_mode, ModernTreasury::Internal::Type::Boolean

      # @!attribute object
      #
      #   @return [String]
      required :object, String

      # @!attribute privacy_opt_out
      #   Cross River Bank specific setting to opt out of privacy policy.
      #
      #   @return [Boolean, nil]
      required :privacy_opt_out, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute regulation_o
      #   It covers, among other types of insider loans, extensions of credit by a member
      #   bank to an executive officer, director, or principal shareholder of the member
      #   bank; a bank holding company of which the member bank is a subsidiary; and any
      #   other subsidiary of that bank holding company.
      #
      #   @return [Boolean, nil]
      required :regulation_o, ModernTreasury::Internal::Type::Boolean, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, backup_withholding_percentage:, created_at:, discarded_at:, enable_backup_withholding:, live_mode:, object:, privacy_opt_out:, regulation_o:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {ModernTreasury::Models::LegalEntityBankSettings} for more details.
      #
      #   @param id [String]
      #
      #   @param backup_withholding_percentage [Integer, nil] The percentage of backup withholding to apply to the legal entity.
      #
      #   @param created_at [Time]
      #
      #   @param discarded_at [Time, nil]
      #
      #   @param enable_backup_withholding [Boolean, nil] Whether backup withholding is enabled. See more here - https://www.irs.gov/busin
      #
      #   @param live_mode [Boolean] This field will be true if this object exists in the live environment or false i
      #
      #   @param object [String]
      #
      #   @param privacy_opt_out [Boolean, nil] Cross River Bank specific setting to opt out of privacy policy.
      #
      #   @param regulation_o [Boolean, nil] It covers, among other types of insider loans, extensions of credit by a member
      #
      #   @param updated_at [Time]
    end
  end
end
