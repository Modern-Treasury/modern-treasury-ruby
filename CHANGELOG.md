# Changelog

## 0.1.0-alpha.14 (2025-02-19)

Full Changelog: [v0.1.0-alpha.13...v0.1.0-alpha.14](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.13...v0.1.0-alpha.14)

### ⚠ BREAKING CHANGES

* encode objects in multipart encoding as JSON ([#206](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/206))
* base page should be module instead of class ([#197](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/197))
* breaking change - improved request options signatures ([#191](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/191))

### Features

* breaking change - improved request options signatures ([#191](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/191)) ([0024863](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/00248638aa3dbb46960da7faa8c1f9ec8b1a9801))
* bundle typing manifests with gem release ([#219](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/219)) ([f307c50](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f307c50fb0f06358a59c43101db7b42a18df45ee))
* **client:** send `X-Stainless-Read-Timeout` header ([#208](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/208)) ([ca214f6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ca214f6a25af6b03e3468a531261d3366ac32086))
* enable type annotations ([#198](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/198)) ([d3293dd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d3293dd50eb1c947a86fecf5fd598c6ebdc1ab94))
* improve interface readability, especially in `*.rbi` ([#200](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/200)) ([4fa44ec](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4fa44ecf2ff8e3e024523ba885c5dc507aa51dd2))
* improve sorbet attribute signatures ([#199](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/199)) ([058e8cb](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/058e8cbfacd51b864f0f83d9bbab0bcc26f7f2ac))
* inline sorbet type aliases ([#215](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/215)) ([6f729c1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6f729c115df9597141ba098cd6b6ab93baa0e3e5))
* support const enums ([#189](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/189)) ([b7c2fcc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b7c2fcc5cf99ad586a1a5f9ad3671192915ee046))
* support overlapping HTTP requests in same Fiber ([#228](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/228)) ([5bff049](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5bff0497931079a0d2c13aa635dc84940e5b05e1))
* unify param & return types in yard ([#195](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/195)) ([db72553](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/db72553236250c09b66cba4550e2c9beadf18d14))


### Bug Fixes

* base client type annotations ([#211](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/211)) ([7844e59](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7844e59681739e123261359db4e98363ef59416c))
* base page should be module instead of class ([#197](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/197)) ([1e440ea](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1e440eaa22739370b6e248a56965d41f18911499))
* correctly mark optional arrays and hashes as nullable ([#201](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/201)) ([b226c47](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b226c47432b0fe806ca363f2cf603c9151047abe))
* encode objects in multipart encoding as JSON ([#206](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/206)) ([54bbc66](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/54bbc66f9729bfd131f06097bc5ae72b18ea31b1))
* mark nullable property as nullable ([#202](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/202)) ([55d140a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/55d140a62725dc92fa7da80954a24adf9f34224f))
* sorbet request method signatures should support default values ([#214](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/214)) ([ed35053](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ed35053b4e71dec020670b797f6ba376393ac6aa))
* ssl timeout not required when TCP socket open timeout specified ([#229](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/229)) ([7173972](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7173972a2c3623dbfdc424497f77e07043972b47))
* temporarily run CI without bundler cache ([#217](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/217)) ([3b1ddbd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3b1ddbd942acc268e96379ecc8235b3201c6a920))
* **type signature:** remove extraneous `params` from resource methods ([#204](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/204)) ([d776b74](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d776b74573795784ee926186c4d2c84c76adfb6b))
* update outdated examples ([#213](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/213)) ([4980f7a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4980f7a0bf9415c0ae089001a14dc7422a002625))


### Chores

* bump lockfile ([#232](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/232)) ([4b3dc70](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4b3dc70de28ad5f5267728751dcb670ac0f79e75))
* bump sorbet ([#222](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/222)) ([f9fd964](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f9fd9641c1cbc0e7e999f1b81cf2f06f0e77b01b))
* clamp timeout to range of positive floats ([#209](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/209)) ([133b26f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/133b26f42a68dfd1cc32233dd99fc4266f877cf1))
* clean up client tests ([#230](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/230)) ([82c5462](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/82c54625f5c727a35b990c9115a9565489a5f9d8))
* do not git ignore `bin/` ([#218](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/218)) ([7e2fb52](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7e2fb52d9550b4c06231b7bf6a7b7b6a3889855f))
* enable full pagination tests ([#226](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/226)) ([e5f53ef](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e5f53ef359307ec5c0cae683189d471b9ffae7a5))
* fix a yard doc comment ([#192](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/192)) ([f4d692d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f4d692d0097dee7d5bcde3d79f09d95b0a8d14c0))
* formatting change for `*.rbi` files ([#216](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/216)) ([8d45576](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8d45576f38df234a1a9e7179e9b99ff0b7639ec2))
* fully qualify `Array` and `Hash` in rbs files to avoid collisions ([#221](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/221)) ([114a85a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/114a85a15afd31e9003ca44904615ab1d16839e7))
* **internal:** bump dependencies ([#224](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/224)) ([898ac45](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/898ac4503989c015330ae143ba14a680ef2aac25))
* **internal:** formatting ([#231](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/231)) ([e13ad42](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e13ad423b18cadf690281c357f97473312abdc44))
* **internal:** update dependencies ([#207](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/207)) ([aa506f2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/aa506f26be7ceee01d65bafc96a8ca87760b4557))
* **internal:** update lock file ([#203](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/203)) ([f702918](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f702918a9533d3020b341e4b17888899524fe04d))
* **internal:** update lock file ([#205](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/205)) ([c50c320](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c50c320ad013aa13f5d841c7cbea338dec214b64))
* **internal:** update lock file ([#210](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/210)) ([7d153ef](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7d153efd878833c046685fbfd015b149003f3b64))
* **internal:** update lock file ([#227](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/227)) ([4bfda6a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4bfda6a82a2573ee025359374980a98a20b66bc6))
* refactor util method signatures ([#194](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/194)) ([2e1075a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2e1075a30f959d448d08f51120bf12fbf3f86906))
* rename internal type aliases ([#233](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/233)) ([5e138d9](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5e138d9a89360c8a954f5eb8cefc336108c11a35))
* support (deprecated) ruby 3.0 as well ([#212](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/212)) ([0e9e2a7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0e9e2a7eb6daeb2d3fb5ec9126ba5feb135a28f9))
* update deps ([#220](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/220)) ([0269f2f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0269f2f284eb8f06d5454179193956deb9fcf2f1))
* update deps ([#223](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/223)) ([238f120](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/238f12070b58046658cb64ac80749636777090ac))
* use concise syntax for pattern matching ([#225](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/225)) ([0adb49f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0adb49f019711b935890fcb85ae5c3502ea1889a))


### Refactors

* **client:** impose consistent sdk internals layout ([#196](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/196)) ([9f0a078](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9f0a078731fb738d6d3e6ad128056f30c9aba5f5))
* extract some base client internals into utils ([#193](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/193)) ([7362dba](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7362dba889fd21c936979443a0e83162db31121d))

## 0.1.0-alpha.13 (2025-01-22)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Chores

* **api:** adds new APIs for LedgerAccountSettlement LedgerEntries ([#188](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/188)) ([1ca1a78](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1ca1a7819de400f5656689553387377f0ba3c846))
* improve yard doc folding and reduce repetition ([#187](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/187)) ([aa11ac4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/aa11ac47e63f2a6023082cbf810565d843074459))
* use more descriptive rubocop output format ([#185](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/185)) ([6be7f8c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6be7f8c4e1cfb0e040860aaecdf3fdecf224c856))

## 0.1.0-alpha.12 (2025-01-21)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* ruby add nilability annotations ([#181](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/181)) ([8a1b7e8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8a1b7e8ca44adc77d200bd33a0356c7cef58a1ad))
* run rubocop in multiple processes when formatting ([#176](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/176)) ([53f1afc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/53f1afc6b3b4a10fe4b5e55b332842d14bb13b56))


### Chores

* minor formatting changes ([#182](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/182)) ([e9e4d65](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e9e4d65691b9f22c5c93c4db39ebf517f29e2413))
* more detailed yard docs for base client ([#184](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/184)) ([30c8a39](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/30c8a3915cd0ee8a9753a4c6472c96cd1e4d64a8))
* more detailed yard docs for sdk utils ([#183](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/183)) ([ff7948d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ff7948d98b7cb3bffbcb73262259999b639b1ffa))
* re-order init params in accordance with their optionality ([#180](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/180)) ([ad95042](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ad95042c1dd3b228976d866a89f49b7581b05ccd))
* re-order resource classes constructor position ([#178](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/178)) ([2c83d22](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2c83d224ade5da91bf51f486f72d49898bdd8aea))
* touch up yard docs with more spec compliant syntax ([#179](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/179)) ([675187f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/675187f42480ad28fc1350a28ba0104b2ff1049f))

## 0.1.0-alpha.11 (2025-01-13)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Features

* escape path params ([#159](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/159)) ([51d3009](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/51d300992dc2caf67e92d5905a796585c853b52b))
* examples for working with discriminated unions ([#173](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/173)) ([4073fe4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4073fe4ee316991b45a271cfd3239f8145a938ca))
* exercise connection pool in tests ([#161](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/161)) ([2564185](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/25641851ce51699bbb426f23c02db90a5bb44812))
* generate enum examples ([#148](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/148)) ([dc7dd95](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/dc7dd95cf3baed41d0536625c9c68248c05a2437))
* generate some omitted class names in doc comments ([#145](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/145)) ([8b33411](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8b3341191ee8dc400df0dbcc5cad2a53a807f694))
* implement subsumption operator for base classes ([#143](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/143)) ([83098a3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/83098a30b568a03a97d93747f1d1c1fd54d954e4))
* implement unions ([#158](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/158)) ([25f9b4b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/25f9b4b6153ae15b0aeeae5023f6d1fbf184cbda))
* improve `ArrayOf` DSL to use `:[]` instead of `.new` ([#150](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/150)) ([59ad085](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/59ad085f4cde045496199f885d389f4b4bb303ae))
* make enum classes thread safe ([#160](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/160)) ([8583271](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/85832719f1966de1f1d392ca6d55ec9cadfccd81))
* more consistent ArrayOf and HashOf DSL with re: lambda usage ([#174](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/174)) ([2e613d6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2e613d63d40e834d5aa79e5f2236a1147b6989ae))
* rb: render kwargs in constructors ([#156](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/156)) ([6fb48d6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6fb48d6d23e5ef404190b33f019942c750a1caf3))
* render recursive ref in return positions ([#157](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/157)) ([cef7c96](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cef7c96d4bcca9f2bcc8ad7a8bff9b2b9cac3087))
* render yard docs with hash and nil? info ([#155](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/155)) ([a2fafad](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a2fafad6ed4bbef32a1e57978a295111868e666e))
* seal private constructors ([#147](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/147)) ([4e0d8c8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4e0d8c8cb3c7c407e3192ce5180d7991ebf9c3f6))
* use pattern matching in parsing pagination responses ([#146](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/146)) ([a68acf0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a68acf057839b6f79d7ae83c9c90e8b32b99bbb1))


### Bug Fixes

* correctly annotate nil values in yard ([#164](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/164)) ([566e307](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/566e30795dc0f522ace9c95a4e0a8e3e26f3f3e5))
* correctly geneate array and map schemas with models ([#154](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/154)) ([3491af3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3491af3c54b509f8204ae1139893874e275a7311))
* correctly mark some error values as optional ([#168](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/168)) ([90d667e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/90d667e3c26b069bb95419f297989e1156344d0d))
* error classes did not call `.to_s` on error uri ([#162](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/162)) ([7438d68](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7438d68e4246c6ee80e5c10bfac82d093786cdc2))
* fix union variant duplication ([#169](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/169)) ([fd2c704](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fd2c704094183923696fd126f1ebcda1a997610c))


### Chores

* accept `BaseClient` where `Client` were accepted ([#170](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/170)) ([26a5262](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/26a526239962610cb68aef4211bdb1382ed26c6f))
* add more private yard doc annotations ([#151](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/151)) ([ca6d481](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ca6d4815a33f651867ed23202ba6d1d9d669fa33))
* adjust method param class position in yard doc for convenience ([#171](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/171)) ([289b586](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/289b586e193614d585fc19a286184f0f76d7a65e))
* adjust whitespace in comments ([#165](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/165)) ([85f3189](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/85f31898aac0a23ef05c253234690fb42b611d2d))
* bump license year ([#163](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/163)) ([5a25733](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5a25733d55717562feba661057d6f62374b00cac))
* generate params class initializers ([#139](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/139)) ([f6d8b6f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f6d8b6f9723be8b07a3d992f67748195142627db))
* improve doc comment readability ([#138](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/138)) ([968d060](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/968d060001247463893d84245dc77b15cc574e42))
* improve uri interpolation internals ([#175](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/175)) ([3799f7b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3799f7bff80e2bb2440b392c9d684d2451a6704d))
* **internal:** bump dependencies ([#172](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/172)) ([8aee63e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8aee63ef749998595510f0825c2cf77275635bf9))
* **internal:** improve sdk internal docs / types ([#167](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/167)) ([54ec275](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/54ec2752d36bcc69e7f1d282505baf190895f838))
* link to param model in method yard docs ([#136](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/136)) ([677dbb1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/677dbb1ff60f92c6d6c3739aecc4eedd16f5ff4f))
* mark deprecated methods ([#140](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/140)) ([54b7639](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/54b763952bd03926b570f4df5df62c8c65b283dd))
* migrate to pattern matching for testing ([#152](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/152)) ([271e9c4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/271e9c4557c98452adff177e0eb4904a2c419d98))
* minor scripting improvements ([#166](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/166)) ([e6605f3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e6605f3f2f1b45b3c7cf35c45aa67e24675eb203))
* more explicit privacy annotations ([#141](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/141)) ([37af495](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/37af4955917da9b161df0dd195be7d34135012a8))
* re-arrange request-options method definitions ([#142](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/142)) ([ebb52e1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ebb52e1003d7a7c2e452e8d5cd9ebc55d9d44fb2))
* slightly more robust utils ([#137](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/137)) ([2e2e65e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2e2e65e2ebb282e793e1135f7f13401b409564da))
* styling improvements in doc strings ([#135](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/135)) ([db45ec0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/db45ec03bd10e8ffa3369d09413f8d78fed21e49))

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
