# frozen_string_literal: true

module ModernTreasury
  module Models
    class ReturnCreateParams < ModernTreasury::BaseModel
      # @!parse
      #   extend ModernTreasury::RequestParameters::Converter
      include ModernTreasury::RequestParameters

      # @!attribute returnable_id
      #   The ID of the object being returned or `null`.
      #
      #   @return [String, nil]
      required :returnable_id, String, nil?: true

      # @!attribute returnable_type
      #   The type of object being returned. Currently, this may only be
      #     incoming_payment_detail.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType]
      required :returnable_type, enum: -> { ModernTreasury::Models::ReturnCreateParams::ReturnableType }

      # @!attribute additional_information
      #   Some returns may include additional information from the bank. In these cases,
      #     this string will be present.
      #
      #   @return [String, nil]
      optional :additional_information, String, nil?: true

      # @!attribute code
      #   The return code. For ACH returns, this is the required ACH return code.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnCreateParams::Code, nil]
      optional :code, enum: -> { ModernTreasury::Models::ReturnCreateParams::Code }, nil?: true

      # @!attribute date_of_death
      #   If the return code is `R14` or `R15` this is the date the deceased counterparty
      #     passed away.
      #
      #   @return [Date, nil]
      optional :date_of_death, Date, nil?: true

      # @!attribute reason
      #   An optional description of the reason for the return. This is for internal usage
      #     and will not be transmitted to the bank.”
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param returnable_id [String, nil]
      #   # @param returnable_type [Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType]
      #   # @param additional_information [String, nil]
      #   # @param code [Symbol, ModernTreasury::Models::ReturnCreateParams::Code, nil]
      #   # @param date_of_death [Date, nil]
      #   # @param reason [String, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     returnable_id:,
      #     returnable_type:,
      #     additional_information: nil,
      #     code: nil,
      #     date_of_death: nil,
      #     reason: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # @abstract
      #
      # The type of object being returned. Currently, this may only be
      #   incoming_payment_detail.
      class ReturnableType < ModernTreasury::Enum
        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # The return code. For ACH returns, this is the required ACH return code.
      class Code < ModernTreasury::Enum
        NUMBER_901 = :"901"
        NUMBER_902 = :"902"
        NUMBER_903 = :"903"
        NUMBER_904 = :"904"
        NUMBER_905 = :"905"
        NUMBER_907 = :"907"
        NUMBER_908 = :"908"
        NUMBER_909 = :"909"
        NUMBER_910 = :"910"
        NUMBER_911 = :"911"
        NUMBER_912 = :"912"
        NUMBER_914 = :"914"
        C01 = :C01
        C02 = :C02
        C03 = :C03
        C05 = :C05
        C06 = :C06
        C07 = :C07
        C08 = :C08
        C09 = :C09
        C13 = :C13
        C14 = :C14
        R01 = :R01
        R02 = :R02
        R03 = :R03
        R04 = :R04
        R05 = :R05
        R06 = :R06
        R07 = :R07
        R08 = :R08
        R09 = :R09
        R10 = :R10
        R11 = :R11
        R12 = :R12
        R14 = :R14
        R15 = :R15
        R16 = :R16
        R17 = :R17
        R20 = :R20
        R21 = :R21
        R22 = :R22
        R23 = :R23
        R24 = :R24
        R29 = :R29
        R31 = :R31
        R33 = :R33
        R37 = :R37
        R38 = :R38
        R39 = :R39
        R51 = :R51
        R52 = :R52
        R53 = :R53
        CURRENCYCLOUD = :currencycloud

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
