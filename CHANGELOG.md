# Changelog

## 0.1.0-alpha.10 (2024-12-16)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### ⚠ BREAKING CHANGES

* (breaking change) flatter error hierarchy ([#123](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/123))
* (breaking change) introduce nesting for models under deeply nested resources ([#120](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/120))

### Features

* ! (breaking change) pull path params not in the last position into the params argument ([#116](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/116)) ([fab651d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fab651d937fb244a4a866b03517b3928275c29f5))
* (breaking change) flatter error hierarchy ([#123](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/123)) ([1953910](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1953910d60a41d48663bc14a99dc7996358b20ee))
* (breaking change) introduce nesting for models under deeply nested resources ([#120](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/120)) ([b20d301](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b20d301b06286b44f5d5f6935777d43efe24fa97))
* fix `to_enum` and `enum_for` built-ins for pagination classes ([#121](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/121)) ([5dc9a32](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5dc9a32c478ed91381e97bea8441ed76147ddb10))
* generate params classes ([#131](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/131)) ([d371f30](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d371f30da68f44876afdbd77ae2ae5fa18314c6c))
* rename fields when they collide with ruby internals ([#114](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/114)) ([7cca6f3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7cca6f37196ad8c99abb22d6c057ca84f0b384b2))


### Bug Fixes

* **client:** various items, including keying connection pool by origin, not host ([#134](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/134)) ([5127f88](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5127f88917fe035ff508d397b5a5048c6c39a732))
* converter now rejects unexpected arguments correctly ([#112](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/112)) ([3d1246f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3d1246f0381abb22793f28dc68c0ccd845432da9))


### Chores

* **api:** additional fields for requests to get BalanceReports and create LegalEntities ([#113](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/113)) ([5ba0bbf](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5ba0bbf7f58aa01d7cdf1728e7584e3c4ba42be8))
* **client:** extract out client agnostic code into utils ([#133](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/133)) ([b4b0369](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b4b03694f7f4b0330508e3043b7a6ddb7d155dfe))
* **client:** refactor to use RFC3986_PARSER for URL handling ([#127](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/127)) ([c44648c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c44648cd7cb94d0c0618f21fd0b50a91fd0750ce))
* **internal:** bump dependencies ([#118](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/118)) ([c5dae56](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c5dae5673cdc62d4c43f6d3e5fd08ddcbcbb9141))
* **internal:** bump dependencies ([#125](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/125)) ([13b8bba](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/13b8bba05ce54259f24a09ebc210ab856085c475))
* **internal:** bump dependencies ([#126](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/126)) ([1e9a0ef](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1e9a0ef98d62345478a59cc65486c4fa713c7050))
* minor refactors ([#122](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/122)) ([6fe07c8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6fe07c89a7b371ac531c472fe0c2d3de4399610c))
* misc code formatting changes ([#124](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/124)) ([a42bc63](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a42bc63def143de30e8067a241e3c0b01e4ab893))
* reduce test verbosity ([#128](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/128)) ([5b8d012](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5b8d012c2f825a37bf8605bd005d24cb041f2a62))
* rename internal variable ([#132](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/132)) ([a97dc66](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a97dc668a23c98333a7c07f503f112ea7915f31b))
* reorganize request construction hash to mirror HTTP semantics ([#117](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/117)) ([1d64865](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1d64865025db85d19fd80f5c81a91cd9f6e954cc))
* sync openapi spec ([#119](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/119)) ([45358b8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/45358b85522817dd18ce0ae8eebca14e1cff6492))
* **tests:** limit array example length ([#109](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/109)) ([b9b0422](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b9b0422aff92389bb1d33dd888b36aff3d1d8b18))


### Refactors

* avoid unnecessary setter invocation ([#115](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/115)) ([a7e3f90](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a7e3f90ca70c9dc8caca4897accbef89817f498a))
* remove special testing only request header ([#130](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/130)) ([b42f5f4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b42f5f4ab585b6c2919db2a7e28b7b5322308a93))

## 0.1.0-alpha.9 (2024-11-12)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* annotate client type on resources ([#79](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/79)) ([71af1ae](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/71af1aeadda354e6d765e3bfd3d162101a8db07f))
* **api:** updates to required fields for ExpectedPayments ([#87](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/87)) ([9fbea98](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9fbea98ab046cd1cea8263f40c5220256c5a3664))
* breaking change - replace deprecated 'DateTime' class in favour of 'Time' class ([#74](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/74)) ([e2a92f2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e2a92f20395de996034a70e91b79e06a6389fe2f))
* **client:** add support for file uploads ([#73](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/73)) ([dc98885](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/dc988857458f7a2d8d6c477cfc571347090f8361))
* **client:** configurable timeouts ([#81](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/81)) ([178fa82](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/178fa82eb4900d2a4a5559f915ff008edfdf0bf2))
* **client:** generate classes for enums ([#64](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/64)) ([066eb0e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/066eb0e07db8b1cc95f8d54a91857f76ee08edcf))
* **client:** improved .inspect output ([64f1f66](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/64f1f66ae21a956103678b3004c1c372f38a20f2))
* **client:** parse dates in responses ([#67](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/67)) ([342e8df](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/342e8df6a18f3ee06d93a2b9f9fc4f2270e5f66c))
* **client:** send retry count header ([#70](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/70)) ([712c5aa](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/712c5aaa7af308fca772fc010a3c0798c094a521))
* **client:** support rightward assignment ([#84](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/84)) ([55cefd5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/55cefd5fa21ff4ed84c1fbd63be1905fdd25b66d))
* enable gem building ([#72](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/72)) ([87668f8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/87668f83e6d03ae52f33c77f07358811e96aacd9))
* explicitly mark more internal methods with `private` ([#105](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/105)) ([107725c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/107725cc513381a8c56efce41ab5764bf78455bc))
* generate omitted tests ([#75](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/75)) ([5d33bcf](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5d33bcf714c2bb222d80124aff8fefef21586b4b))
* modernize sdk internals ([#95](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/95)) ([f3aa57e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f3aa57ea96ad102ccca7cdc4e60ff1a485c6af3a))
* replace test/unit with minitest to enable parallel testing ([#77](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/77)) ([0ce9c35](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0ce9c35bb2f1d48a6853cf26453bfe7363719c5a))
* switch to yard `@!parse` directive for init signatures instead of dummy methods ([#86](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/86)) ([fe4acec](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fe4acec615ed6b60e280f910e87bb4ce8fdedf47))


### Bug Fixes

* **client:** point accessors to the correct keys ([64f1f66](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/64f1f66ae21a956103678b3004c1c372f38a20f2))
* run bundle install before publishing ruby gems ([#99](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/99)) ([5929d4d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5929d4d5164ad43dcbb6a3851fc4061b4968eec7))
* **tests,docs:** use snake_case for option names ([#88](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/88)) ([64f1f66](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/64f1f66ae21a956103678b3004c1c372f38a20f2))


### Chores

* **api:** fields and parameters added to bulk actions, transactions and invoice creation ([#68](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/68)) ([0255b40](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0255b408e77b7fbeee1ac5209fc8ebc7fdd720af))
* **client:** normalize header names ([#76](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/76)) ([d2adfb8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d2adfb88e123b0123a5232ea039d93a8f5dfa5fe))
* consolidate imports ([#90](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/90)) ([59c7f19](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/59c7f19989d7786b533dd74cf0eb10faaf679ea9))
* formatting consistency update ([#85](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/85)) ([d36401b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d36401bef8b79f23c8acb1afe7a088d303367978))
* fully qualify class name for inheritance ([#102](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/102)) ([1fb97e5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1fb97e5c135541876165a26a73bb10f05460e252))
* generate yard docs on page classes ([#101](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/101)) ([41da934](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/41da934f38daf8200576fe8057dbafef7d1e6514))
* **internal:** bump webrick dependency ([#69](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/69)) ([1949e59](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1949e5963de959489513c3c9671ce4cb9237c255))
* **internal:** make lint rules more strict ([#66](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/66)) ([f862f23](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f862f230af710e139f88f15d701cb260ee447f8f))
* minor improvements to param type yard doc ([#91](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/91)) ([fe734e0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fe734e05d93fe2d7ac5984d859e3fd2d6d26b93a))
* minor refactorings on base client ([#97](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/97)) ([e13ff94](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e13ff949ce22a17d3dfd8702b3b02be0e337e214))
* reduce format task verbosity ([#78](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/78)) ([7394cfa](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7394cfad85d25701e457adf23603b76e346d167e))
* refactor base client internals ([#106](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/106)) ([4504ec1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4504ec18914c6c6fc4db8475554de1feae2e0556))
* refactor base client methods ([#98](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/98)) ([5786db0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5786db0e4b38a085e53b67ffa99a07109bfdd8cf))
* switch over to relative requires for gem locals ([#89](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/89)) ([781dbdb](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/781dbdb765c7d31575a5e6fca9cf1c8abe34d18d))
* **tests:** support overriding base url with an env var ([#82](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/82)) ([7d419f7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7d419f7b76f0f4a0957315f1fd87804d42de3f9f))
* **types:** add types for Model#initialize ([#83](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/83)) ([c8b4185](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c8b4185476ad5c9e7cbb73a53f5d92937ecb2b1e))
* **types:** more detailed type documentation ([#71](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/71)) ([9e6eb5a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9e6eb5ace1eee7e25e797c3f6ba3aebed1b570a0))
* yard doc improvements ([#94](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/94)) ([4eafb46](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4eafb464fbb2b6405be8392fff59d68df9befa06))


### Refactors

* clean up base client send_request method ([#100](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/100)) ([0a00593](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0a005931c89c8db85e4761444c85b8f483bf008a))
* client constructor ([#108](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/108)) ([8a3dc06](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8a3dc060f1c4657bd8b141bdc63b0f7e0d693566))
* extract out url handling functions into utils ([#96](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/96)) ([ed0c8dd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ed0c8dd3b457f47a3480586976e9065221600668))
* private base client internals ([#107](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/107)) ([c7a96d5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c7a96d5352083206cca0b66b1fcfd4889634f846))

## 0.1.0-alpha.8 (2024-09-17)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Features

* **client:** public model initializer ([#62](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/62)) ([18c4881](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/18c488131e6dacc30169e7bae1653468b2eb234e))

## 0.1.0-alpha.7 (2024-09-09)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Chores

* **internal:** bump dependencies ([#56](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/56)) ([45c204f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/45c204f5991646eadb2a65eb8f505d024596f858))
* **internal:** dependency updates ([#57](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/57)) ([273d43f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/273d43fb6db204eefdfdddb5a5b317e425cd4550))
* **internal:** update dependencies ([#55](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/55)) ([9b6e02f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9b6e02f76aab9213fafd1c8236c1dba3f1e847d9))
* **tests:** add tests for all resources ([#59](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/59)) ([52370ca](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/52370ca5d4ca4d14bfad6a4d34d85079aa23fe14))


### Documentation

* minor examples improvement ([#53](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/53)) ([d3275c7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d3275c749b5fe7c72d4af40f007f768b6b15ef7b))

## 0.1.0-alpha.6 (2024-08-23)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Bug Fixes

* **client:** keep authorization headers on same-origin redirects ([#52](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/52)) ([b6f81e5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b6f81e5179a3bc9df9755c8483ed044f2dc63c06))


### Chores

* **client:** follow standards for retry-after; retry-after-ms support ([#50](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/50)) ([f11cf4d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f11cf4d1386c95bb716aab00a5db69e404918c8c))

## 0.1.0-alpha.5 (2024-08-20)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Features

* **client:** follow redirects ([#49](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/49)) ([4b60d06](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4b60d0696596f82223e94a6a0220c7e58111b54d))


### Chores

* fix typo in comment ([#46](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/46)) ([09997c9](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/09997c9675ff78935ffe234cc468dbe095374a04))

## 0.1.0-alpha.4 (2024-07-18)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Chores

* **ci:** limit release doctor target branches ([#36](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/36)) ([27e8594](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/27e85941837a7518eabb16ee7ac28370cf8ae13e))
* updates ([#34](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/34)) ([9c62823](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9c62823399f4e8884368c3ee1dac61e7b05815c1))

## 0.1.0-alpha.3 (2024-07-15)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* **api:** updates ([#32](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/32)) ([c457124](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c4571245bcd238bb1fb64f682f64fe7ad3e8f70d))


### Chores

* **docs:** minor update to formatting of API link in README ([#33](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/33)) ([06622e7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/06622e75bce9cb1abaed2340a7bfefd33200cbbd))


### Documentation

* **examples:** update example values ([#30](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/30)) ([b42f71e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b42f71e20b84c28a19696d5d4bf7995e4ac0f6a1))

## 0.1.0-alpha.2 (2024-07-01)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** updates ([#29](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/29)) ([2d96db1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2d96db1558af1a8cb7bc8de5114d07a7db87f71f))


### Chores

* gitignore test server logs ([#27](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/27)) ([aa768df](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/aa768df85d4025a498fc39f0137d1747db27c4b7))

## 0.1.0-alpha.1 (2024-06-04)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** add currency to ledger account categories ([#19](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/19)) ([2478e4f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2478e4f59af0c196c94772c947883c5d8442f115))
* **api:** add kr_brn kr_crn kr_rrn enum values ([#24](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/24)) ([6217a24](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6217a24f8d89be95b95bc8c2630319198ad2fd97))
* **api:** add risk rating field ([#25](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/25)) ([b2f1a04](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b2f1a04ac3d02a1febc88aaf975d13cb6e65a94d))
* **api:** invoice overdue reminders ([8682dc3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8682dc32ae60b5f7dadef39115d9290341415c5e))
* **api:** mark ConnectionLegalEntity response properties as required ([#21](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/21)) ([6c2e58f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6c2e58fd597d15236c941f9e3a5c0a7a3f275eca))
* **api:** remove deprecated ledger account payouts ([#20](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/20)) ([8682dc3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8682dc32ae60b5f7dadef39115d9290341415c5e))
* **api:** updates ([#12](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/12)) ([f71802b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f71802b40e3897c1f6fe65575fbdd3f91c0de940))
* **api:** various API updates ([#5](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/5)) ([00a00b6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/00a00b6c4b2ea5418795d075b9f91cf0d3ae2802))
* propagate resource description field from stainless config to SDK docs ([#14](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/14)) ([d51e25f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d51e25f34c8df06da5fcfb616f4f9ae3e9f837b4))


### Chores

* add support for managing releases ([#3](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/3)) ([93e3f61](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/93e3f615edc4ad360eebd0f3f17f08d2f7b30300))
* adjust configuration for release management ([2abd38b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2abd38b7a8d9733291cdb76594cd53d9b8975d3d))
* **docs:** add SECURITY.md ([#16](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/16)) ([7ca1b50](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7ca1b5054795f110364683939bda273faa6003c9))
* **docs:** streamline payment purpose and vendor failure handling ([#17](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/17)) ([4c5cad2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4c5cad2d687425d005ea0b7300f2f7ffb65ad668))
* **internal:** add code reviewer ([#23](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/23)) ([47619ae](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/47619ae6f49696d42e1b538118de4ab65fbb541b))
* **internal:** add dev scripts ([#22](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/22)) ([221360a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/221360af31fe4cc810dc056d3fa0b7cbd531788b))
* **internal:** add link to openapi spec ([#7](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/7)) ([ed26191](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ed261919aa39631b89c1247799465cca6b7b8b72))
* **internal:** add scripts/mock ([#8](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/8)) ([7e2c6c6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7e2c6c68c0e42f7179df98438cb2c0b3cc35b2b8))
* **internal:** bump mock server version to ~5.8.0 ([#10](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/10)) ([404683a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/404683ab408f6a667fbe3f796f295a0b3a237e1e))
* **internal:** fix generated version numbers ([#13](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/13)) ([9799e3b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9799e3baa9000f598f77d43e7077b1bb9ff5137d))
* **internal:** fix generated version numbers ([#18](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/18)) ([66c6822](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/66c6822a121dee0b8da807723dd8c2fcb520ecde))
* **internal:** sync urls ([#26](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/26)) ([37672e6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/37672e6b5badf10322fae0e3cd98b3898e06acc5))


### Documentation

* add return annotations to resource definitions ([#15](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/15)) ([2f49bb6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2f49bb6ff7b5a7b822a1f4975a68fd7899252745))
* update README to point to canonical repo, remove incorrect hard-coded content ([#1](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/1)) ([d9f280e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d9f280ef1eb5ac071f2483c1777659a28f4e6e7e))


### Refactors

* improve type conversion framework and fix YARD return type edge cases ([#11](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/11)) ([a1d899e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a1d899e34031bf37d59961079e5aa0958c2a9e7a))
* remove Converter.same_type? in favor of using native Ruby methods like kind_of? ([#2](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/2)) ([8b811cc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8b811cceeac7fe7a72a7a3f4a2c659018bc452e6))

## 0.0.1-alpha.1 (2024-04-25)

Full Changelog: [v0.0.1-alpha.0...v0.0.1-alpha.1](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.0.1-alpha.0...v0.0.1-alpha.1)

### Chores

* add support for managing releases ([#3](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/3)) ([2b960f5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2b960f5617c3b92165bf3caf2372c02f429a0d9d))
* adjust configuration for release management ([defc93c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/defc93c87959fdbaebc78cccff0b560331fc25b4))


### Documentation

* update README to point to canonical repo, remove incorrect hard-coded content ([#1](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/1)) ([9596c7d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9596c7d1bb0d250c847aeb985537cfeb79b06c63))


### Refactors

* remove Converter.same_type? in favor of using native Ruby methods like kind_of? ([#2](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/2)) ([c270b00](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c270b00014c4ff40b956c8012848e07357b3a333))
