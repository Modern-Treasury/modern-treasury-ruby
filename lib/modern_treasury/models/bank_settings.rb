# frozen_string_literal: true

module ModernTreasury
  module Models
    class BankSettings < ModernTreasury::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute backup_withholding_percentage
      #   The percentage of backup withholding to apply to the legal entity.
      #   @return [Integer]
      required :backup_withholding_percentage, Integer

      # @!attribute created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute discarded_at
      #   @return [Time]
      required :discarded_at, Time

      # @!attribute enable_backup_withholding
      #   Whether backup withholding is enabled. See more here - https://www.irs.gov/businesses/small-businesses-self-employed/backup-withholding.
      #   @return [Boolean]
      required :enable_backup_withholding, ModernTreasury::BooleanModel

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      required :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #   @return [String]
      required :object, String

      # @!attribute privacy_opt_out
      #   Cross River Bank specific setting to opt out of privacy policy.
      #   @return [Boolean]
      required :privacy_opt_out, ModernTreasury::BooleanModel

      # @!attribute regulation_o
      #   It covers, among other types of insider loans, extensions of credit by a member bank to an executive officer, director, or principal shareholder of the member bank; a bank holding company of which the member bank is a subsidiary; and any other subsidiary of that bank holding company.
      #   @return [Boolean]
      required :regulation_o, ModernTreasury::BooleanModel

      # @!attribute updated_at
      #   @return [Time]
      required :updated_at, Time

      # @!parse
      #   # Create a new instance of BankSettings from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [Integer] :backup_withholding_percentage The percentage of backup withholding to apply to the legal entity.
      #   #   @option data [String] :created_at
      #   #   @option data [String] :discarded_at
      #   #   @option data [Hash] :enable_backup_withholding Whether backup withholding is enabled. See more here -
      #   #     https://www.irs.gov/businesses/small-businesses-self-employed/backup-withholding.
      #   #   @option data [Hash] :live_mode This field will be true if this object exists in the live environment or false
      #   #     if it exists in the test environment.
      #   #   @option data [String] :object
      #   #   @option data [Hash] :privacy_opt_out Cross River Bank specific setting to opt out of privacy policy.
      #   #   @option data [Hash] :regulation_o It covers, among other types of insider loans, extensions of credit by a member
      #   #     bank to an executive officer, director, or principal shareholder of the member
      #   #     bank; a bank holding company of which the member bank is a subsidiary; and any
      #   #     other subsidiary of that bank holding company.
      #   #   @option data [String] :updated_at
      #   def initialize(data = {}) = super
    end
  end
end
