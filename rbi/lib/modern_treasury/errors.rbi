# typed: strong

module ModernTreasury
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    attr_reader :cause
  end

  class ConversionError < ModernTreasury::Error
  end

  class APIError < ModernTreasury::Error
    sig { returns(URI::Generic) }
    attr_reader :url

    sig { returns(T.nilable(Integer)) }
    attr_reader :status

    sig { returns(T.nilable(T.anything)) }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil); end
  end

  class APIConnectionError < ModernTreasury::APIError
    sig { void }
    attr_reader :status

    sig { void }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < ModernTreasury::APIConnectionError
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < ModernTreasury::APIError
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass
      ).returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:); end

    sig { returns(Integer) }
    attr_reader :status

    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status:, body:, request:, response:, message: nil); end
  end

  class BadRequestError < ModernTreasury::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < ModernTreasury::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < ModernTreasury::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < ModernTreasury::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < ModernTreasury::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < ModernTreasury::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < ModernTreasury::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < ModernTreasury::APIStatusError
    HTTP_STATUS = T.let((500..), T::Range[Integer])
  end
end
