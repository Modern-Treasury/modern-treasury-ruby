# frozen_string_literal: true

module ModernTreasury
  module Models
    # @example
    # ```ruby
    # account_collection_flow => {
    #   counterparty_id: String,
    #   payment_types: -> { ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::PaymentType] === _1 },
    #   id: String,
    #   client_token: String,
    #   created_at: Time,
    #   **_
    # }
    # ```
    class AccountCollectionFlow < ModernTreasury::BaseModel
      # @!attribute counterparty_id
      #   The ID of a counterparty. An external account created with this flow will be
      #     associated with this counterparty.
      #
      #   @return [String]
      required :counterparty_id, String

      # @!attribute payment_types
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType>]
      required :payment_types,
               -> {
                 ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::PaymentType]
               }

      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] client_token
      #   The client token of the account collection flow. This token can be used to embed
      #     account collection in your client-side application.
      #
      #   @return [String, nil]
      optional :client_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_token

      # @!attribute [r] created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :created_at

      # @!attribute external_account_id
      #   If present, the ID of the external account created using this flow.
      #
      #   @return [String, nil]
      optional :external_account_id, String, nil?: true

      # @!attribute [r] live_mode
      #   This field will be true if this object exists in the live environment or false
      #     if it exists in the test environment.
      #
      #   @return [Boolean, nil]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :live_mode

      # @!attribute [r] object
      #
      #   @return [String, nil]
      optional :object, String

      # @!parse
      #   # @return [String]
      #   attr_writer :object

      # @!attribute [r] receiving_countries
      #
      #   @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry>]
      optional :receiving_countries,
               -> {
                 ModernTreasury::ArrayOf[enum: ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry]
               }

      # @!parse
      #   # @return [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry>]
      #   attr_writer :receiving_countries

      # @!attribute [r] status
      #   The current status of the account collection flow. One of `pending`,
      #     `completed`, `expired`, or `cancelled`.
      #
      #   @return [Symbol, ModernTreasury::Models::AccountCollectionFlow::Status, nil]
      optional :status, enum: -> { ModernTreasury::Models::AccountCollectionFlow::Status }

      # @!parse
      #   # @return [Symbol, ModernTreasury::Models::AccountCollectionFlow::Status]
      #   attr_writer :status

      # @!attribute [r] updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :updated_at

      # @!parse
      #   # @param counterparty_id [String]
      #   # @param payment_types [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::PaymentType>]
      #   # @param id [String]
      #   # @param client_token [String]
      #   # @param created_at [Time]
      #   # @param external_account_id [String, nil]
      #   # @param live_mode [Boolean]
      #   # @param object [String]
      #   # @param receiving_countries [Array<Symbol, ModernTreasury::Models::AccountCollectionFlow::ReceivingCountry>]
      #   # @param status [Symbol, ModernTreasury::Models::AccountCollectionFlow::Status]
      #   # @param updated_at [Time]
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
      # ```ruby
      # case payment_type
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

      # An account created with this flow will support wires from the US to these
      #   countries.
      #
      # @example
      # ```ruby
      # case receiving_country
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

      # The current status of the account collection flow. One of `pending`,
      #   `completed`, `expired`, or `cancelled`.
      #
      # @example
      # ```ruby
      # case status
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
