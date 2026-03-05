# typed: strong

module ModernTreasury
  module Models
    class LedgerEntryRetrieveParams < ModernTreasury::Internal::Type::BaseModel
      extend ModernTreasury::Internal::Type::RequestParameters::Converter
      include ModernTreasury::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            ModernTreasury::LedgerEntryRetrieveParams,
            ModernTreasury::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # If true, response will include the balances attached to the ledger entry. If
      # there is no balance available, null will be returned instead.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_balances

      sig { params(show_balances: T::Boolean).void }
      attr_writer :show_balances

      sig do
        params(
          id: String,
          show_balances: T::Boolean,
          request_options: ModernTreasury::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # If true, response will include the balances attached to the ledger entry. If
        # there is no balance available, null will be returned instead.
        show_balances: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            show_balances: T::Boolean,
            request_options: ModernTreasury::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
