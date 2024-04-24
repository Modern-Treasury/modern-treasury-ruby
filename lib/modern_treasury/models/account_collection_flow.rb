# frozen_string_literal: true

module ModernTreasury
  module Models
    class AccountCollectionFlow < BaseModel
      # @!attribute [rw] counterparty_id
      #   The ID of a counterparty. An external account created with this flow will be associated with this counterparty.
      #   @return [String]
      required :counterparty_id, String

      # @!attribute [rw] payment_types
      #   @return [Array<Symbol>]
      required :payment_types, ModernTreasury::ArrayOf.new(ModernTreasury::Enum.new(:ach, :wire))

      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] client_token
      #   The client token of the account collection flow.  This token can be used to embed account collection in your client-side application.
      #   @return [String]
      optional :client_token, String

      # @!attribute [rw] created_at
      #   @return [String]
      optional :created_at, String

      # @!attribute [rw] external_account_id
      #   If present, the ID of the external account created using this flow.
      #   @return [String]
      optional :external_account_id, String

      # @!attribute [rw] live_mode
      #   This field will be true if this object exists in the live environment or false if it exists in the test environment.
      #   @return [Boolean]
      optional :live_mode, ModernTreasury::BooleanModel

      # @!attribute [rw] object
      #   @return [String]
      optional :object, String

      # @!attribute [rw] receiving_countries
      #   @return [Array<Symbol>]
      optional :receiving_countries,
               ModernTreasury::ArrayOf.new(
                 ModernTreasury::Enum.new(
                   :USA,
                   :AUS,
                   :BEL,
                   :CAN,
                   :CHL,
                   :CHN,
                   :COL,
                   :FRA,
                   :DEU,
                   :HKG,
                   :IND,
                   :IRL,
                   :ITA,
                   :MEX,
                   :NLD,
                   :PER,
                   :ESP,
                   :GBR
                 )
               )

      # @!attribute [rw] status
      #   The current status of the account collection flow. One of `pending`, `completed`, `expired`, or `cancelled`.
      #   @return [Symbol]
      optional :status, ModernTreasury::Enum.new(:cancelled, :completed, :expired, :pending)

      # @!attribute [rw] updated_at
      #   @return [String]
      optional :updated_at, String
    end
  end
end
