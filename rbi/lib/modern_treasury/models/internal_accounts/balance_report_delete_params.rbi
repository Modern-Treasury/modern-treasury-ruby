# typed: strong

module ModernTreasury
  module Models
    module InternalAccounts
      class BalanceReportDeleteParams < ModernTreasury::BaseModel
        extend ModernTreasury::RequestParameters::Converter
        include ModernTreasury::RequestParameters

        Shape = T.type_alias do
          T.all({internal_account_id: String}, ModernTreasury::RequestParameters::Shape)
        end

        sig { returns(String) }
        attr_accessor :internal_account_id

        sig { params(internal_account_id: String, request_options: ModernTreasury::RequestOpts).void }
        def initialize(internal_account_id:, request_options: {}); end

        sig { returns(ModernTreasury::Models::InternalAccounts::BalanceReportDeleteParams::Shape) }
        def to_h; end
      end
    end
  end
end
