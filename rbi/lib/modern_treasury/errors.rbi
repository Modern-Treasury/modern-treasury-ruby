# typed: strong

module ModernTreasury
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    def cause
    end

    sig { params(_: T.nilable(StandardError)).returns(T.nilable(StandardError)) }
    def cause=(_)
    end
  end

  class ConversionError < ModernTreasury::Error
  end

  class APIError < ModernTreasury::Error
    sig { returns(URI::Generic) }
    def url
    end

    sig { params(_: URI::Generic).returns(URI::Generic) }
    def url=(_)
    end

    sig { returns(T.nilable(Integer)) }
    def status
    end

    sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def status=(_)
    end

    sig { returns(T.nilable(T.anything)) }
    def body
    end

    sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
    def body=(_)
    end

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < ModernTreasury::APIError
    sig { void }
    def status
    end

    sig { params(_: NilClass).void }
    def status=(_)
    end

    sig { void }
    def body
    end

    sig { params(_: NilClass).void }
    def body=(_)
    end

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < ModernTreasury::APIConnectionError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < ModernTreasury::APIError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:, message: nil)
    end

    sig { returns(Integer) }
    def status
    end

    sig { params(_: Integer).returns(Integer) }
    def status=(_)
    end

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status:, body:, request:, response:, message: nil)
    end
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
