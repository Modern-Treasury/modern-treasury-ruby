# frozen_string_literal: true

module ModernTreasury
  module Models
    # @see ModernTreasury::Resources::Returns#create
    class ReturnCreateParams < ModernTreasury::Internal::Type::BaseModel
      # @!parse
      #   extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      # @!attribute returnable_id
      #   The ID of the object being returned or `null`.
      #
      #   @return [String, nil]
      required :returnable_id, String, nil?: true

      # @!attribute returnable_type
      #   The type of object being returned. Currently, this may only be
      #   incoming_payment_detail.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType]
      required :returnable_type, enum: -> { ModernTreasury::Models::ReturnCreateParams::ReturnableType }

      # @!attribute additional_information
      #   Some returns may include additional information from the bank. In these cases,
      #   this string will be present.
      #
      #   @return [String, nil]
      optional :additional_information, String, nil?: true

      # @!attribute code
      #   The return code. For ACH returns, this is the required ACH return code.
      #
      #   @return [Symbol, ModernTreasury::Models::ReturnCreateParams::Code, nil]
      optional :code, enum: -> { ModernTreasury::Models::ReturnCreateParams::Code }, nil?: true

      # @!attribute data
      #   The raw data from the return file that we get from the bank.
      #
      #   @return [Object, nil]
      optional :data, ModernTreasury::Internal::Type::Unknown, nil?: true

      # @!attribute date_of_death
      #   If the return code is `R14` or `R15` this is the date the deceased counterparty
      #   passed away.
      #
      #   @return [Date, nil]
      optional :date_of_death, Date, nil?: true

      # @!attribute reason
      #   An optional description of the reason for the return. This is for internal usage
      #   and will not be transmitted to the bank.”
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param returnable_id [String, nil]
      #   # @param returnable_type [Symbol, ModernTreasury::Models::ReturnCreateParams::ReturnableType]
      #   # @param additional_information [String, nil]
      #   # @param code [Symbol, ModernTreasury::Models::ReturnCreateParams::Code, nil]
      #   # @param data [Object, nil]
      #   # @param date_of_death [Date, nil]
      #   # @param reason [String, nil]
      #   # @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     returnable_id:,
      #     returnable_type:,
      #     additional_information: nil,
      #     code: nil,
      #     data: nil,
      #     date_of_death: nil,
      #     reason: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::Internal::Type::BaseModel) -> void

      # The type of object being returned. Currently, this may only be
      # incoming_payment_detail.
      module ReturnableType
        extend ModernTreasury::Internal::Type::Enum

        INCOMING_PAYMENT_DETAIL = :incoming_payment_detail

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The return code. For ACH returns, this is the required ACH return code.
      module Code
        extend ModernTreasury::Internal::Type::Enum

        CODE_901 = :"901"
        CODE_902 = :"902"
        CODE_903 = :"903"
        CODE_904 = :"904"
        CODE_905 = :"905"
        CODE_907 = :"907"
        CODE_908 = :"908"
        CODE_909 = :"909"
        CODE_910 = :"910"
        CODE_911 = :"911"
        CODE_912 = :"912"
        CODE_914 = :"914"
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
        #   def self.values; end
      end
    end
  end
end
