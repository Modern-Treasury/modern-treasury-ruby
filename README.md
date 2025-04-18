# Modern Treasury Ruby API library

The Modern Treasury Ruby library provides convenient access to the Modern Treasury REST API from any Ruby 3.1.0+ application.

## Documentation

Documentation for releases of this gem can be found [on RubyDoc](https://gemdocs.org/gems/modern_treasury).

The REST API documentation can be found on [docs.moderntreasury.com](https://docs.moderntreasury.com).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

<!-- x-release-please-start-version -->

```ruby
gem "modern_treasury", "~> 0.1.0.pre.alpha.18"
```

<!-- x-release-please-end -->

## Usage

```ruby
require "bundler/setup"
require "modern_treasury"

modern_treasury = ModernTreasury::Client.new(
  organization_id: "my-organization-ID", # defaults to ENV["MODERN_TREASURY_ORGANIZATION_ID"]
  api_key: "My API Key" # defaults to ENV["MODERN_TREASURY_API_KEY"]
)

counterparty = modern_treasury.counterparties.create(name: "my first counterparty")

puts(counterparty.id)
```

## Sorbet

This library is written with [Sorbet type definitions](https://sorbet.org/docs/rbi). However, there is no runtime dependency on the `sorbet-runtime`.

When using sorbet, it is recommended to use model classes as below. This provides stronger type checking and tooling integration.

```ruby
modern_treasury.counterparties.create(name: "my first counterparty")
```

### Pagination

List methods in the Modern Treasury API are paginated.

This library provides auto-paginating iterators with each list response, so you do not have to request successive pages manually:

```ruby
page = modern_treasury.counterparties.list

# Fetch single item from page.
counterparty = page.items[0]
puts(counterparty.id)

# Automatically fetches more pages as needed.
page.auto_paging_each do |counterparty|
  puts(counterparty.id)
end
```

### File uploads

Request parameters that correspond to file uploads can be passed as `StringIO`, or a [`Pathname`](https://rubyapi.org/3.1/o/pathname) instance.

```ruby
require "pathname"

# using `Pathname`, the file will be lazily read, without reading everything in to memory
document = modern_treasury.documents.create(
  documentable_id: "24c6b7a3-02...",
  documentable_type: :counterparties,
  file: Pathname("my/file.txt")
)

file = File.read("my/file.txt")
# using `StringIO`, useful if you already have the data in memory
document = modern_treasury.documents.create(
  documentable_id: "24c6b7a3-02...",
  documentable_type: :counterparties,
  file: StringIO.new(file)
)

puts(document.id)
```

### Errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `ModernTreasury::Errors::APIError` will be thrown:

```ruby
begin
  external_account = modern_treasury.external_accounts.create(counterparty_id: "missing")
rescue ModernTreasury::Errors::APIError => e
  puts(e.status) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >= 500      | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
modern_treasury = ModernTreasury::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
modern_treasury.counterparties.create(name: "my first counterparty", request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds.

Timeouts are applied separately to the initial connection and the overall request time, so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
modern_treasury = ModernTreasury::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
modern_treasury.counterparties.create(name: "my first counterparty", request_options: {timeout: 5})
```

## Editor support

Some editor language services like [Solargraph](https://github.com/castwide/solargraph?tab=readme-ov-file#gem-support) or [Sorbet](https://sorbet.org/docs/rbi#the-hidden-definitions-rbi) require a manually triggered indexing step before functionalities like auto-completion and go to definition can operate.

Please refer to their respective documentation for details. This library also includes a [short guide](https://github.com/Modern-Treasury/modern-treasury-ruby/tree/main/CONTRIBUTING.md#editor-support) on how to set up various editor services for internal development.

## Advanced Concepts

### Model DSL

This library uses a Model DSL to represent request parameters and response shapes in `lib/modern_treasury/models`.

The model classes service as anchor points for both toolchain readable documentation, and language service assisted navigation links. This information also allows the SDK's internals to perform translation between plain and rich data types; e.g., conversion between a `Time` instance and an ISO8601 `String`, and vice versa.

In all places where a `BaseModel` type is specified, vanilla Ruby `Hash` can also be used. For example, the following are interchangeable as arguments:

```ruby
# This has tooling readability, for auto-completion, static analysis, and goto definition with supported language services
params = ModernTreasury::Models::CounterpartyCreateParams.new(name: "my first counterparty")

# This also works
params = {
  name: "my first counterparty"
}
```

### Making custom/undocumented requests

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a requests as seen in examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints, you can make requests using `client.request`. Options on the client will be respected (such as retries) when making this request.

```ruby
response = client.request(
  method: :post,
  path: '/undocumented/endpoint',
  query: {"dog": "woof"},
  headers: {"useful-header": "interesting-value"},
  body: {"he": "llo"},
)
```

### Concurrency & connection pooling

The `ModernTreasury::Client` instances are thread-safe, and should be re-used across multiple threads. By default, each `Client` have their own HTTP connection pool, with a maximum number of connections equal to thread count.

When the maximum number of connections has been checked out from the connection pool, the `Client` will wait for an in use connection to become available. The queue time for this mechanism is accounted for by the per-request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

Currently, `ModernTreasury::Client` instances are only fork-safe if there are no in-flight HTTP requests.

### Sorbet

#### Enums

Sorbet's typed enums require sub-classing of the [`T::Enum` class](https://sorbet.org/docs/tenum) from the `sorbet-runtime` gem.

Since this library does not depend on `sorbet-runtime`, it uses a [`T.all` intersection type](https://sorbet.org/docs/intersection-types) with a ruby primitive type to construct a "tagged alias" instead.

```ruby
module ModernTreasury::Models::AccountsType
  # This alias aids language service driven navigation.
  TaggedSymbol = T.type_alias { T.all(Symbol, ModernTreasury::Models::AccountsType) }
end
```

#### Argument passing trick

It is possible to pass a compatible model / parameter class to a method that expects keyword arguments by using the `**` splat operator.

```ruby
params = ModernTreasury::Models::CounterpartyCreateParams.new(name: "my first counterparty")
modern_treasury.counterparties.create(**params)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.1.0 or higher.

## Contributing

See [the contributing documentation](https://github.com/Modern-Treasury/modern-treasury-ruby/tree/main/CONTRIBUTING.md).
