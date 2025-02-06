# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportRetrieveParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        sig { returns(String) }
        attr_accessor :internal_account_id

        sig do
          params(
            internal_account_id: String,
            request_options: T.any(ModernTreasury::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(internal_account_id:, request_options: {}); end

        sig do
          override.returns({internal_account_id: String, request_options: ModernTreasury::RequestOptions})
        end
        def to_hash; end
      end
    end
  end
end
