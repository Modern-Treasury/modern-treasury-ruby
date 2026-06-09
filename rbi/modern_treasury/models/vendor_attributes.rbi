# typed: strong

module ModernTreasury
  module Models
    VendorAttributes =
      T.let(T.anything, ModernTreasury::Internal::Type::Converter)
  end
end
