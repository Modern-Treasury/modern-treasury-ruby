# frozen_string_literal: true

module ModernTreasury
  module Models
    module InternalAccounts
      # @see ModernTreasury::Resources::InternalAccounts::BalanceReports#retrieve
      class BalanceReportRetrieveParams < ModernTreasury::Internal::Type::BaseModel
        extend ModernTreasury::Internal::Type::RequestParameters::Converter
        include ModernTreasury::Internal::Type::RequestParameters

        # @!attribute internal_account_id
        #
        #   @return [String]
        required :internal_account_id, String

        # @!method initialize(internal_account_id:, request_options: {})
        #   @param internal_account_id [String]
        #   @param request_options [ModernTreasury::RequestOptions, Hash{Symbol=>Object}]

        module ID
          extend ModernTreasury::Internal::Type::Union

          variant String

          variant const: -> { ModernTreasury::Models::InternalAccounts::BalanceReportRetrieveParams::ID::LATEST }

          # @!method self.variants
          #   @return [Array(String, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias do
              T.any(String, ModernTreasury::InternalAccounts::BalanceReportRetrieveParams::ID::TaggedSymbol)
            end
          end

          # @!group

          LATEST = :latest

          # @!endgroup
        end
      end
    end
  end
end
