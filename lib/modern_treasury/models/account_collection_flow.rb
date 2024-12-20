# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlow < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #   The ID of a counterparty. An external account created with this flow will be associated with this counterparty.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute payment_types
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType>]
      required :payment_types,
               ModernTreasury::ArrayOf[enum: -> {
                 ModernTreasury::Models::AccountCollectionFlow::PaymentType
               }]

      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute client_token
      #   The client token of the account collection flow.  This token can be used to embed account collection in your client-side application.
      #
      #   @return [String]
      optional :client_token, String

      # @!attribute created_at
      #
      #   @return [Time]
      optional :created_at, Time

      # @!attribute external_account_id
      #   If present, the ID of the external account created using this flow.
      #
      #   @return [String]
      optional :external_account_id, String

      # @!attribute live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute object
      #
      #   @return [String]
      optional :object, String

      # @!attribute receiving_countries
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry>]
      optional :receiving_countries,
               ModernTreasury::ArrayOf[enum: -> {
                 ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry
               }]

      # @!attribute status
      #   The current status of the account collection flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountCollectionFlow::Status]
      optional :status, enum: -> { ModernTreasury::Models::AccountCollectionFlow::Status }

      # @!attribute updated_at
      #
      #   @return [Time]
      optional :updated_at, Time

      # @!parse
      #   # @param counterparty_id [String] The ID of a counterparty. An external account created with this flow will be
      #   #   associated with this counterparty.
      #   #
      #   # @param payment_types [Array<String>]
      #   #
      #   # @param id [String, nil]
      #   #
      #   # @param client_token [String, nil] The client token of the account collection flow. This token can be used to embed
      #   #   account collection in your client-side application.
      #   #
      #   # @param created_at [String, nil]
      #   #
      #   # @param external_account_id [String, nil] If present, the ID of the external account created using this flow.
      #   #
      #   # @param live_mode [Boolean, nil] This field will be true if this object exists in the live environment or false
      #   #   if it exists in the test environment.
      #   #
      #   # @param object [String, nil]
      #   #
      #   # @param receiving_countries [Array<String>, nil]
      #   #
      #   # @param status [String, nil] The current status of the account collection flow. One of `pending`,
      #   #   `completed`, `expired`, or `cancelled`.
      #   #
      #   # @param updated_at [String, nil]
      #   #
      #   def initialize(
      #     counterparty_id:,
      #     payment_types:,
      #     id: nil,
      #     client_token: nil,
      #     created_at: nil,
      #     external_account_id: nil,
      #     live_mode: nil,
      #     object: nil,
      #     receiving_countries: nil,
      #     status: nil,
      #     updated_at: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | ModernTreasury::BaseModel) -> void

      # An account created with this flow will support payments of one of these types.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :ach
      #   # ...
      # in :wire
      #   # ...
      # end
      # ```
      class PaymentType < ModernTreasury::Enum
        ACH = :ach
        WIRE = :wire

        finalize!
      end

      # An account created with this flow will support wires from the US to these countries.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :USA
      #   # ...
      # in :AUS
      #   # ...
      # in :BEL
      #   # ...
      # in :CAN
      #   # ...
      # in :CHL
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class ReceivingCountry < ModernTreasury::Enum
        USA = :USA
        AUS = :AUS
        BEL = :BEL
        CAN = :CAN
        CHL = :CHL
        CHN = :CHN
        COL = :COL
        FRA = :FRA
        DEU = :DEU
        HKG = :HKG
        IND = :IND
        IRL = :IRL
        ITA = :ITA
        MEX = :MEX
        NLD = :NLD
        PER = :PER
        ESP = :ESP
        GBR = :GBR

        finalize!
      end

      # The current status of the account collection flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #
      # @example
      #
      # ```ruby
      # case enum
      # in :cancelled
      #   # ...
      # in :completed
      #   # ...
      # in :expired
      #   # ...
      # in :pending
      #   # ...
      # end
      # ```
      class Status < ModernTreasury::Enum
        CANCELLED = :cancelled
        COMPLETED = :completed
        EXPIRED = :expired
        PENDING = :pending

        finalize!
      end
    end
  end
end
