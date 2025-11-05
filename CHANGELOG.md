# Changelog

## 0.10.0 (2025-11-05)

Full Changelog: [v0.9.0...v0.10.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.9.0...v0.10.0)

### Features

* **api:** api update ([7fb1734](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7fb17347c1b30ac236a1a4df294f5b49adc6647b))
* **api:** api update ([f5d639f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f5d639f577bbe973d2a299282bee8815f9311aa3))


### Bug Fixes

* better thread safety via early initializing SSL store during HTTP client creation ([a56afe6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a56afe6e3ad81b5baabd7e1f225341a68752a0cc))


### Chores

* **client:** send user-agent header ([3301d2f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3301d2f2b166f302c29ab5038708aed0f9ca325e))
* **internal:** codegen related update ([7f3208e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7f3208e35064166fe4e49217c0701d5325e9f057))

## 0.9.0 (2025-10-23)

Full Changelog: [v0.8.0...v0.9.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.8.0...v0.9.0)

### Features

* handle thread interrupts in the core HTTP client ([6ba4bc5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6ba4bc5503f416fc1acf57db52b250b66d07a26c))

## 0.8.0 (2025-10-22)

Full Changelog: [v0.7.0...v0.8.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.7.0...v0.8.0)

### Features

* **api:** api update ([3c38801](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3c3880109e7eb9dd7da618df92d4f36baaec5ae4))
* **api:** api update ([eb7521c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/eb7521c34b77ca715290d83cd8b2a27766408d4c))
* **api:** manual updates ([7c6fc3a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7c6fc3a601e8228e173fb0e66b22d5a1fe84a6e5))


### Bug Fixes

* absolutely qualified uris should always override the default ([80d0f5d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/80d0f5dc070e5f622a02c9e43ed6a0b1aec70661))

## 0.7.0 (2025-10-14)

Full Changelog: [v0.6.0...v0.7.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.6.0...v0.7.0)

### Features

* **api:** api update ([f37bdd2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f37bdd2eab9164cf67cc01d7ff91eb8b43ff5156))
* **api:** api update ([0de7b36](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0de7b367b1ba0798455460af4a1f6f902ced1fe3))
* **api:** api update ([8be10ad](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8be10ad6a312243a6f498eae30371e573fbaa153))
* **api:** api update ([40350f0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/40350f05ed2bf464e98b2dc71a66d20dc67c510f))
* **api:** api update ([6254376](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6254376cd385f807e07f962f8d017a6aba11687c))
* **api:** api update ([65f533f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/65f533f6bba9b9a26773181a7a4bc2640b8cd49b))
* **api:** api update ([84ea477](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/84ea47740ec4a929a2e396909cd300207f176023))
* **api:** api update ([53c103b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/53c103b611ac9642c5490172097fd58e49a5415c))
* **api:** api update ([19f4fc1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/19f4fc1d0fa8b478d9e1f416994eb3f4d1bf76ec))
* **api:** api update ([071a9fc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/071a9fc6611d175138c211b387763ee6a5a88b5d))
* **api:** api update ([ffc7d79](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ffc7d79a60947c41ee9d6377045b76e1f4a18c3e))
* **api:** api update ([14591db](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/14591dba3e463de9bd135c4cfb439e7bfa21b124))
* expose response headers for both streams and errors ([b2e9b9e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b2e9b9e7dda9b5c8e06118465be0711b65d4b209))


### Bug Fixes

* always send `filename=...` for multipart requests where a file is expected ([71bddaf](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/71bddaf2e91e843cc24450f3fc41da459dc963a0))
* coroutine leaks from connection pool ([d75fe60](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d75fe608595aa1cb6493809e1466af4bb3c235d4))
* **internal:** use null byte as file separator in the fast formatting script ([cfc916d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cfc916de6390536ef027ccc7bae25a247f6602bc))
* shorten multipart boundary sep to less than RFC specificed max length ([ac1bc6a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ac1bc6aecbc03f55fd8e879b7585c1fe0a3a7f48))
* should not reuse buffers for `IO.copy_stream` interop ([8d4bd02](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8d4bd02e4771eb7762f2e4ef678b0206f309eded))


### Performance Improvements

* faster code formatting ([8cfac52](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8cfac52d0b5fd4e38d1d0e35c2e6791a160f7ad7))


### Chores

* allow fast-format to use bsd sed as well ([02dfec0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/02dfec098434161efb839a0b9c4e209ff2c718b2))
* do not install brew dependencies in ./scripts/bootstrap by default ([d743aac](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d743aac958c1613a4e44aeb09612b9dd42d60452))
* ignore linter error for tests having large collections ([8d6b26b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8d6b26b092354a38b43270e1418d98840e1d2a1f))

## 0.6.0 (2025-09-11)

Full Changelog: [v0.5.0...v0.6.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.5.0...v0.6.0)

### Features

* **api:** api update ([3a6356b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3a6356b922c0815d7bfa6a4e542b38d13806face))

## 0.5.0 (2025-09-05)

Full Changelog: [v0.4.0...v0.5.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.4.0...v0.5.0)

### Features

* **api:** api update ([7bb8343](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7bb8343db05aba4af5eb1411a7129d9ecd79b531))
* **api:** api update ([91ef416](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/91ef4160b5560af12b5ae4e04cdf86385eaeaf11))
* **api:** api update ([04753f6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/04753f69f95245ebcf45081adcda55f170d8825d))
* **api:** api update ([3d55c8a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3d55c8a8c209b301185d797aa39af767ebb95ccb))
* **api:** api update ([7f6696b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7f6696bb39c13efc7de0e7d8976171e5f53ad326))


### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([6cddea1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6cddea1c80b2d04187c14308443132d0efc1f06e))


### Chores

* add json schema comment for rubocop.yml ([2a3a865](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2a3a865e2b905c440d4ec64a518d0c939df696bf))

## 0.4.0 (2025-08-12)

Full Changelog: [v0.3.0...v0.4.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.3.0...v0.4.0)

### Features

* **api:** api update ([9338696](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9338696991502c9587ac12e99bf438f318ed5dcd))
* **api:** manual updates ([51fe69c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/51fe69cc3f20b854ae8c9e10488784eea87811d5))

## 0.3.0 (2025-08-11)

Full Changelog: [v0.2.0...v0.3.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.2.0...v0.3.0)

### Features

* **api:** api update ([a4b71cb](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a4b71cba0ff870577eb70c2d30ca345b0186b322))

## 0.2.0 (2025-08-11)

Full Changelog: [v0.1.0...v0.2.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0...v0.2.0)

### Features

* **api:** api update ([9a09dee](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9a09deeb1763c088711a64846f2fee443af808f1))
* **api:** api update ([17800f0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/17800f09cd4eebd8470ef05905750db6dd7774f1))


### Chores

* collect metadata from type DSL ([adcbf72](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/adcbf723cee88f404d90dbcb3224477ff3a51fdb))
* **internal:** update comment in script ([c6df294](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c6df2947b3350923c86f8a1db5e8f007bef4700b))
* update @stainless-api/prism-cli to v5.15.0 ([88b3e17](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/88b3e17a56ff0b5b0a699cdbec364f43d7fd0e7b))

## 0.1.0 (2025-08-02)

Full Changelog: [v0.1.0-alpha.22...v0.1.0](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.22...v0.1.0)

### Features

* **api:** api update ([bc8de9c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/bc8de9c156d8b75282e5ba888d497deff4b25948))
* **api:** api update ([95b4873](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/95b48736c2249d8ccc4fe706b3fa526b2f468dc2))
* **api:** api update ([a62983f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a62983f37beadf31634a2a9a9b05837b6b095f63))
* **api:** api update ([b70a332](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b70a332777ce561b2fe2f93954aae68cb17b5cf2))
* **api:** api update ([21fda11](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/21fda11f539d2ea327078312237e2a444b958bfe))
* **api:** api update ([7d169fa](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7d169fa6917ce333c76f12628fdd7756aed457ce))
* **api:** api update ([52d87f6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/52d87f65e23cc16e10e52fde4ccc81e16a5555ed))
* **api:** api update ([d466528](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d46652814f67800f534a702724f406845fd1d416))
* **api:** api update ([e909ebb](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e909ebb243d92bc2bd4d23253286e2bdde19eac7))
* **api:** api update ([f258c75](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f258c75ae2ae55f46b3318a6d668b670b68eabd2))
* **api:** api update ([0e4f36d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0e4f36dfe47b52ae6eb0738028f4461ef7549051))
* **api:** manual updates ([12a73dd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/12a73dd911d167d15d43eb33804f4cda8f3cdd97))
* **api:** manual updates ([fd4e901](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fd4e9014ddc3073041f9e5d9b57414f38100f741))
* **api:** manual updates ([8f250b4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8f250b4874e7be94b4823d695bb2a1a93df4afed))
* **api:** manual updates ([d172b95](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d172b955661a9a12bc3b59479d8a24a05961c992))
* **api:** manual updates ([27b506d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/27b506d96912a07b4753d1686556bf45cc96f269))
* **api:** manual updates ([b28aa54](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b28aa54fb130b017a9047236cbfdf4350cb7c72b))
* **api:** manual updates ([7cfaf73](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7cfaf730ca33e1405eda1a7472f2e0fa76c7e126))


### Bug Fixes

* **api:** make Legal Entity change backwards compatibile ([d4be112](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d4be112f8ca0f26e72f47cf12738a336b2d591c2))
* **client:** unique model names ([b35f861](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b35f86118ac5ca888f11ac7a03c3fc46eeb96540))
* **internal:** ensure sorbet test always runs serially ([245ad18](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/245ad18fda1d808d934cd93019f1463c9e22132d))


### Chores

* **internal:** increase visibility of internal helper method ([5ab5275](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5ab5275f39dd4309e6fa034071004c2370ea4d4d))
* update contribute.md ([503a762](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/503a762153cde391cc8b30c87255517e313e7524))

## 0.1.0-alpha.22 (2025-07-07)

Full Changelog: [v0.1.0-alpha.21...v0.1.0-alpha.22](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.21...v0.1.0-alpha.22)

### Features

* **api:** api update ([f9b7650](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f9b765072627604455f57237b76a32e07a03e30a))
* **api:** api update ([9a357cc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9a357cc723fd191f542d6975b4f84cb5acc555e1))
* **api:** api update ([0ea5708](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0ea5708a1c1057643b10481fe3f28599c238b387))
* **api:** api update ([a9e4c9b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a9e4c9b8984b08a8887e3897f44e45b32222af0e))
* **api:** api update ([7e4655b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7e4655b211def4398f04e5f190c264eb82b92487))
* **api:** api update ([b387235](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b387235b089476f0ed63ac717eb2308f1fbbb6f8))


### Bug Fixes

* **ci:** release-doctor — report correct token name ([e04ac73](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e04ac73389f3bcec56f7403dea71e818a03022cf))
* issue where we cannot mutate arrays on base model derivatives ([e387253](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e387253acf1d48294e42fee99ce023668308aedf))


### Chores

* **ci:** enable for pull requests ([00b3946](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/00b394631003a1c1e8f961e838b25bb1b5391805))
* **ci:** link to correct github repo ([c7048da](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c7048dad5371a6b9e7c5467bd0aefa0df97df3b4))
* **ci:** only run for pushes and fork pull requests ([1d387c6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1d387c65cbf539ef9b5a188a2201c1af732b60e7))
* **internal:** allow streams to also be unwrapped on a per-row basis ([658a566](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/658a566873f97d28b0734af37806a4e0a16e3740))

## 0.1.0-alpha.21 (2025-06-04)

Full Changelog: [v0.1.0-alpha.20...v0.1.0-alpha.21](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.20...v0.1.0-alpha.21)

### Bug Fixes

* `to_sorbet_type` should not return branded types ([64e22b2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/64e22b2126f3da851a7b9dbe66b35ddf75f8720e))
* default content-type for text in multi-part formdata uploads should be text/plain ([1ccbced](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1ccbcedbc67024e305f42562b0e450dfa3c96580))
* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([8db30b1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8db30b16ce159a33ad0580b613f7c4d4f7064394))


### Chores

* **docs:** reorder client arguments ([f7efa80](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f7efa807c5978616f167451d4968285bcb502555))

## 0.1.0-alpha.20 (2025-05-23)

Full Changelog: [v0.1.0-alpha.19...v0.1.0-alpha.20](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.19...v0.1.0-alpha.20)

### Features

* **api:** api update ([51f2558](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/51f2558e2bc2a89aa925e1e3f1dc64d5e3c5c162))
* **api:** manual updates ([452bb1c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/452bb1cbf073c0763b7b5e542042a320ab88c817))
* bump default connection pool size limit to minimum of 99 ([f9b80ac](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f9b80ace0577c91d113b36f8c02906cd2df41495))


### Bug Fixes

* correctly instantiate sorbet type aliases for enums and unions ([c2c4dba](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c2c4dba8a02c3c7bf84fed51cc8d9d06dd94d7a6))
* prevent rubocop from mangling `===` to `is_a?` check ([18009bb](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/18009bbd0286587025edead104ea029abaa71278))


### Chores

* **docs:** grammar improvements ([e533b50](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e533b5028d204cc9537f17a88167b8c2f40e9d6c))
* force utf-8 locale via `RUBYOPT` when formatting ([cf86688](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cf866885c2f426bc3f129f12e7320c62d9a9e2c0))
* refine Yard and Sorbet types and ensure linting is turned on for examples ([601bc22](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/601bc22d020b65bc19362566685aabc295d0598d))
* use fully qualified names for yard annotations and rbs aliases ([621ed43](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/621ed43f77f526d2623989a48f3f1e9149ff800a))
* use sorbet union aliases where available ([6701427](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6701427854edd85ae958c7c53c8177af7fa68ec5))
* whitespaces ([45f3cea](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/45f3cea94c88bb71356d502cce7f4fceb033f613))


### Documentation

* rewrite much of README.md for readability ([e426334](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e426334cca1f4df82faa6675a909601f3480c186))

## 0.1.0-alpha.19 (2025-05-13)

Full Changelog: [v0.1.0-alpha.18...v0.1.0-alpha.19](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.18...v0.1.0-alpha.19)

### Features

* **api:** only send idempotency headers on PUT / POST requests ([83fd4af](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/83fd4af298abec1b714675e7acc40a276f1283f2))
* expose base client options as read only attributes ([60a211d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/60a211d7ae5e60e4a53e90fe22d543b130744de4))
* expose recursive `#to_h` conversion ([06efb53](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/06efb534c53987cb36ca7ccee45bf50d426ed36b))
* implement `#hash` for data containers ([d96aea7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d96aea756785f1cc2cd327d201424786fd20d5b0))
* support sorbet aliases at the runtime ([c606bc7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c606bc705110611d96dffbe82f4dd53f5bca2679))
* support specifying content-type with FilePart class ([db20b0a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/db20b0afeeb1b6db89f454045f55acb39b6f9fa4))
* support webmock for testing ([4644eaa](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4644eaa0de6336e235c200158efc2927613f27e2))


### Bug Fixes

* always check if current page is empty in `next_page?` ([6efc146](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6efc146540017fdc0cc7fb0475e1afc4a6d7ecfc))
* ensure gem release is unaffected by renaming ([606ca8c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/606ca8cc2e6c40c0abb89bd22ebe99a11c2de4d5))
* **internal:** ensure formatting always uses c.utf-8 locale ([4303382](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/43033823e1670e0e66970524ad253d56b4e4ceb9))
* **internal:** fix formatting script for macos ([850b98b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/850b98b36836357549b7c056fd382027dea014f4))
* **internal:** update gemspec name ([db69e0e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/db69e0efc6b4fed197f481336fdb29a4025ae13a))
* make a typo for `FilePart.content` ([442af9e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/442af9e1e043f36ceaa0a2dc863ab93dc3fa7c66))


### Chores

* accept all nd-json mimetype variants ([d009d1a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d009d1a3e63bb3cffe1d77ec6708d4df2e804178))
* add generator safe directory ([c7c4009](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c7c4009c059fc4af63c464b5b368d13b821695b5))
* broadly detect json family of content-type headers ([4e9190f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4e9190f728bf54a3d05bd21bc34cb4379d35d683))
* **ci:** add timeout thresholds for CI jobs ([51098dd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/51098dde2b1e6a0d5da51579efa6d3222ae0b6e7))
* **ci:** only use depot for staging repos ([163402a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/163402af8b04a17a425a72d958d7d9017030d84b))
* **ci:** run on more branches and use depot runners ([1aaaa6f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1aaaa6f569a67f3e33d5d2529d38494f49e4808a))
* consistently use string in examples, even for enums ([3766f9f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3766f9fd246d700b7c1fd936d16a5988267b3030))
* documentation improvements ([ae02ed8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ae02ed86227ef8a2aba567eb8b82400b3a16c16d))
* explicitly mark apis public under `Internal` module ([6358f72](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6358f727a0bf1a4841d297a94a535335ee62b57e))
* fix misc linting / minor issues ([de1286e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/de1286ec80d18859be5bc2d402d1cef3aa3bd158))
* **internal:** annotate request options with type aliases in sorbet ([a6d3efa](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a6d3efa58e61ef821a4b77fde957a086b5ca430a))
* **internal:** codegen related update ([13f2ea4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/13f2ea46f28401e2265af8ffc60ebd9b16277bea))
* **internal:** codegen related update ([a70306b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a70306bf04b718b8386bbb5498e5f1a2e103d4bf))
* **internal:** codegen related update ([320f66e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/320f66efad24e22c522025127a9ac4f06daf2a99))
* **internal:** improve response envelope unwrap functionality ([91c54a5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/91c54a535ab97caa3f0f10f5909803f8fd484a49))
* **internal:** minor type annotation improvements ([80c7729](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/80c7729b33c9c8ae9f14b5ab2792ad37a7299379))
* **internal:** remove unnecessary `rbi/lib` folder ([6d6e5ed](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6d6e5ed2c64f7afd36b0304ce363efb64c13bc5f))
* loosen rubocop rules that don't always make sense ([a7ecdad](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a7ecdad7899b6b85ad59c08617740a27544db180))
* make sorbet enums easier to read ([3dc3765](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3dc37654a43d57db2c759714933d73efa31837f7))
* migrate away from deprecated `JSON#fast_generate` ([9cf605d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9cf605dd27df53480a369f01677f886809afa69e))
* more accurate type annotations and aliases ([dd1f15d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/dd1f15dbf267e6d437b7ed83d1377f8aca17350e))
* re-export top level models under library namespace ([ac629fe](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ac629fecccb2b54de95280c575178c48be04416f))
* refine `#inspect` and `#to_s` for model classes ([786b22a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/786b22a499a6ba7f923926c42f971af82ce65ac0))
* remove Gemfile.lock during bootstrap ([08680ae](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/08680ae4ffe4c4caccba19359315a1151a181599))
* reorganize type aliases ([c28f2b8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c28f2b8ca8350ae72b7f5d39b6f5c939a7eb4a17))
* revert ignoring Gemfile.lock ([6a27e21](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6a27e21bee317a61e8abf393cd98686787dc970d))
* show truncated parameter docs in yard ([5df7631](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5df7631e3e10b14d383e6e38a6d4efc79d0883a4))
* simplify yard annotations by removing most `@!parse` directives ([5a3e8a7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5a3e8a75fe86fb7539a7b0396294eb905f20f58e))
* update README with recommended editor plugins ([aadf96a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/aadf96a28e21ea93f09b9db44f7878f00c57c394))
* use `@!method` instead of `@!parse` for virtual method type definitions ([d23861f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d23861f35b0d7a9ff65efa2a9f4ff3f6e962f251))
* validate request option coercion correctness ([313bbc7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/313bbc7003e71a20a5268115bfadf2feda148db8))


### Documentation

* illustrate environmental defaults for auth variables ([2313757](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/23137570576c7d32b0581f9d4b3b2581b5e563aa))
* **readme:** fix typo ([90db191](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/90db19112353146360a44a9abb0bdc061d991915))

## 0.1.0-alpha.18 (2025-04-17)

Full Changelog: [v0.1.0-alpha.17...v0.1.0-alpha.18](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.17...v0.1.0-alpha.18)

### Features

* **client:** enable setting base URL from environment variable ([8b57199](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8b57199c16d42d8071872ba0d782887700247b80))
* use Pathname alongside raw IO handles for file uploads ([#362](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/362)) ([597ca71](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/597ca71588eb90a6a7c0ad3fc170378bcba1f599))


### Bug Fixes

* always send idempotency header when specified as a request option ([be266d1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/be266d1d21f0db2b1542c61d448e66421bdb92e2))
* **client:** send correct HTTP path ([2befc5f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2befc5fa50540d382cd929703eec84e3c9595afb))
* inaccuracies in the README.md ([6546328](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/65463285d724960027021dcf2ff351d06be0f10e))
* **internal:** update release-please to use ruby strategy for README.md ([#366](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/366)) ([a04f5fd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a04f5fd4909acf8e7ee4e2554f06a87ba51166e6))
* raise connection error for errors that result from HTTP transports ([#363](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/363)) ([5391daa](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5391daa2da684394e8ae235133f9f0437e33d7e9))


### Chores

* add README docs for using solargraph when installing gem from git ([#361](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/361)) ([6768c5a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6768c5ab9d99bfe84382c9129cd092a789646531))
* ensure readme.md is bumped when release please updates versions ([#365](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/365)) ([97c0c4a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/97c0c4af8f89730fc2e1b3785bd346774ab90401))
* fix readme typo ([#368](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/368)) ([4362053](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4362053ecd2442a4e8a40fdd75332efacdb8aba2))
* **internal:** always run post-processing when formatting when syntax_tree ([4e47da9](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4e47da9b1a896bebea37a4287b5175d7519b99f9))
* **internal:** contribute.md and contributor QoL improvements ([8297e5a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8297e5a75ff90e1787e77286092672ce5961d8a2))
* **internal:** expand CI branch coverage ([#367](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/367)) ([5ee08dc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5ee08dc8e0598365a230df36ecade1e86c202759))
* **internal:** loosen internal type restrictions ([5c895bd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5c895bdb64e2e32678ae632f246db0d4856c7c46))
* **internal:** minor touch ups on sdk internals ([ae77c2f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ae77c2f7e48a4c3f26d7e4db97b973ec68ca51d2))
* **internal:** mostly README touch ups ([568453c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/568453cc2806f30273ad19866064a421cd33b7ee))
* **internal:** protect SSE parsing pipeline from broken UTF-8 characters ([f67f9d8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f67f9d8970659c3895bc8f7dc2f2bd6c269532af))
* **internal:** reduce CI branch coverage ([33a4b73](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/33a4b73c08d7ac413d999d5f1390924ce82382a8))
* **internal:** version bump ([#358](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/358)) ([a8942eb](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a8942ebb7120bd68049f6e9422a5e54cd87d0541))
* loosen const and integer coercion rules ([#364](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/364)) ([3c2b2f4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3c2b2f4c8d46b6d3870164dcd117c814c54a9253))
* make client tests look prettier ([#360](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/360)) ([7d2283b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7d2283b7d3a0092c82d9baf01b37af791ef6c40f))
* make internal types pretty print ([b76c12a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b76c12ab4ff61ce339ea4fc1df769014b4996570))


### Documentation

* update documentation links to be more uniform ([9f1a370](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9f1a3701c2ac13f94737ee9e89e7eef12252ed8e))

## 0.1.0-alpha.17 (2025-04-06)

Full Changelog: [v0.1.0-alpha.16...v0.1.0-alpha.17](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.16...v0.1.0-alpha.17)

### ⚠ BREAKING CHANGES

* bump min supported ruby version to 3.1 (oldest non-EOL) ([#340](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/340))
* remove top level type aliases to relocated classes ([#339](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/339))
* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#337](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/337))

### Features

* add MCP server ([3aa7780](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3aa77804dceedbb3efae995c98c9f8077ff1faba))
* add reference links in yard ([#330](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/330)) ([cb2ef85](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cb2ef8514bb2bc2e7d359b19570687d9e75f6fb2))
* allow all valid `JSON` types to be encoded ([#349](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/349)) ([9bd6f82](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9bd6f82f0dbfeaa78355e875a087bcc8dcea335c))
* bump min supported ruby version to 3.1 (oldest non-EOL) ([#340](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/340)) ([53d55b9](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/53d55b91f390d703dbe25754ab6a3075f0c2f1c0))
* implement `to_json` for base model ([#335](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/335)) ([7a56d21](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7a56d210eb933bca6003046c89d2d455f590b5f6))
* **internal:** converter interface should recurse without schema ([#321](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/321)) ([ded9140](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ded9140f4e2d9d8a9785afdaa578d08e10fa7ea9))
* link response models to their methods in yard doc ([#332](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/332)) ([05d1e20](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/05d1e20ead49c2c3653bb3cd08f662c2d829e91a))
* remove top level type aliases to relocated classes ([#339](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/339)) ([9afce0d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9afce0d0f25ef07a8a857b1dcc9f7bbb7530a1b5))
* support query, header, and body params that have identical names ([#348](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/348)) ([e35fb82](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e35fb82d31d79b2671fde813a837ec062a2d369a))
* support solargraph generics ([#343](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/343)) ([a81a079](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a81a07990c1994bff073ea0d646821306481a6b9))


### Bug Fixes

* converter should transform stringio into string where applicable ([#351](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/351)) ([f4a849d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f4a849dd63737683a01741ed322f1d7562ccd23a))
* path interpolation template strings ([#329](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/329)) ([f1ee0a1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f1ee0a1fc3afdbd745fb6fb40db96303854af648))
* pre-release version string should match ruby, not semver conventions ([#342](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/342)) ([4dc22d4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4dc22d4bba56267d9bab69ed71c918f77d35add1))
* switch to github compatible markdown engine ([#326](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/326)) ([b238e1a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b238e1aefdf777f39ce8ace5ca215124d48206ee))
* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#337](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/337)) ([f30e768](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f30e768a6e784f8c856b58caf6ad6ba5c9b3abf0))


### Chores

* always fold up method bodies in sorbet type definitions ([#355](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/355)) ([c0b5534](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c0b5534c3fede2b2021fc116d05a3dc73ff75504))
* **api:** updates to bulk creation request, legal entity schemas and more ([#316](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/316)) ([a03bb4d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a03bb4d6a6e779dce45bf424f67c2b31ba8da146))
* configure new SDK language ([a6de59e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a6de59e84504a01f3da3010ddb79308d0a96d677))
* configure new SDK language ([09a49b9](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/09a49b950b33b3940c337d260621a57f69583475))
* demonstrate how to make undocumented requests in README ([#341](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/341)) ([c3489e3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c3489e35444392a4e357959b2d104708b500332e))
* do not use literals for version in type definitions ([#344](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/344)) ([822ce3f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/822ce3f828da0ad1f8adae0b421089a5799999a9))
* document LSP support in read me ([#347](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/347)) ([f978eb3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f978eb34aef0e95c239e56e01cac224b64ca0005))
* extract error classes into own module ([#336](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/336)) ([48820b7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/48820b79fbce435d12114ce166ae732f54f33ac9))
* fix misc rubocop errors ([#327](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/327)) ([9de60b3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/9de60b3cf4aff93a7239083892e0128e31dbfe81))
* improve yard docs readability ([#331](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/331)) ([739d3ee](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/739d3ee42507a3e0c43364a88c3cd10174df1121))
* internal codegen changes ([cc68144](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cc681440dddb8bb316155518bfe68137c11e146e))
* **internal:** minor refactoring of utils ([#320](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/320)) ([5ea443d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5ea443d4e6e2e8c646817f81345b57a19524f77d))
* **internal:** misc small improvements ([#352](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/352)) ([8bbe0ab](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8bbe0aba630f2197bc3c0d2e5e58d42bfee4ce7e))
* **internal:** more concise handling of parameter naming conflicts ([#357](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/357)) ([f58b2f2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f58b2f2731c0ef7d699e1b32f19fd01e2ad47f0c))
* **internal:** remove CI condition ([#319](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/319)) ([fa5282f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fa5282fb5bf2042e625b88e3ad47dd335997f9f5))
* **internal:** rubocop rules ([#354](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/354)) ([afd8ba5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/afd8ba5585e9a3cb7869e327ac2586f49e6db585))
* **internal:** run rubocop linter in parallel ([#353](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/353)) ([370a349](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/370a349e3b31e63f084cbc934cacb0ae2cbbdba4))
* misc sdk polish ([#346](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/346)) ([21230fa](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/21230fa66c9368c67d4dafb64f6137437c25d8a8))
* more accurate type annotations for SDK internals ([#324](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/324)) ([7e768dd](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7e768dd81bee770ae246bef5bb9c56329cde9625))
* move private classes into internal module ([#338](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/338)) ([29f5b63](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/29f5b631a578f2c2cc4ac6ee7f76d9e37eef5e3f))
* order client variables by "importance" ([#334](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/334)) ([fb43aa5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fb43aa558cea5eb7b079b17c1baaa201f61df79c))
* relax sorbet enum parameters to allow `String` in addition to `Symbol` ([#333](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/333)) ([ea508e7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ea508e7c5e69b8bace4d222796fe71bf4ab4c366))
* relocate internal modules ([#323](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/323)) ([47869c8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/47869c8f805fb642cef8b25bfe8b150c06d4daab))
* Remove deprecated/unused remote spec feature ([88c38e8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/88c38e87ab1d1795b06698fb7dd5bc701daf6d2b))
* remove unnecessary & confusing module ([#322](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/322)) ([96f186c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/96f186c6efec72c630ae5f25f8f49adcccce50b3))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([#350](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/350)) ([5a22de7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5a22de720869b8090535696a2c309ebae284c073))
* simplify internal utils ([#345](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/345)) ([cfbcae4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cfbcae4a8cf325ee82657d5d72b7b8532c78e7ec))
* update readme ([#325](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/325)) ([794e9b6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/794e9b63de57bdabe0358fbf28352c6c366093da))
* update yard comment formatting ([#356](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/356)) ([ef20bc0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ef20bc0a2cecdefd4505812ae16c69881ae46f26))
* use fully qualified name in sorbet README example ([#328](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/328)) ([b99eba2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b99eba2b7e588e3dc3233f1f7ce148c2ef7059ea))

## 0.1.0-alpha.16 (2025-03-27)

Full Changelog: [v0.1.0-alpha.15...v0.1.0-alpha.16](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.15...v0.1.0-alpha.16)

### ⚠ BREAKING CHANGES

* use tagged enums in sorbet type definitions ([#302](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/302))
* support `for item in stream` style iteration on `Stream`s ([#300](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/300))
* **model:** base model should recursively store coerced base models ([#289](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/289))

### Features

* add deprecation notice to enum members and resources ([#244](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/244)) ([fb72692](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fb72692ef48d0beeb9c5cc0ce29d9ce57cdb9fd5))
* add jsonl support ([#258](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/258)) ([976b6cc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/976b6cc94ba23e3fe45f3ccf89cdacc30437d2da))
* add SKIP_BREW env var to ./scripts/bootstrap ([#262](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/262)) ([6dde65a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6dde65a27f715100ac7efd110e2e62f29da9db89))
* consistently accept `AnyHash` types in parameter positions in sorbet ([#307](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/307)) ([7c5b92c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7c5b92ca758bac921b0093bbb87b59383606d514))
* **internal:** modified tests for thread and fiber safety ([#250](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/250)) ([dfae756](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/dfae756f1770139b8a03a4883aa46d34b6cedfdd))
* isolate platform headers ([#245](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/245)) ([37ee661](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/37ee661500df8b2a5c5b45fa48152a14ec7fb601))
* prevent tapioca from introspecting the gem internals ([#306](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/306)) ([ab48c2e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ab48c2ecc47cb4f253a8276c3ef67ee72956ec0f))
* support `for item in stream` style iteration on `Stream`s ([#300](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/300)) ([57a92cf](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/57a92cf5eb08cbd41c543e5153422c6db75b09d8))
* support client level methods ([#265](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/265)) ([bd55768](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/bd557686ba505e3c60a007b6ef41ebc68bea8b37))
* support jsonl uploads ([#277](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/277)) ([e72650d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e72650db988af6f1bca15defb9a061b8c510e919))
* support streaming uploads ([#270](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/270)) ([a4f928e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a4f928ee5a2a23d58ee0ff90cce869a9dde601a6))
* use tagged enums in sorbet type definitions ([#302](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/302)) ([3f08a9b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3f08a9b1dad4c6af9da1863c0a9de7a91edef4fd))
* use Time type instead of String ([#248](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/248)) ([43a8bce](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/43a8bce634d49d9e185c70030ba5eebbbee1fe88))


### Bug Fixes

* bad documentation url for gemdocs.org ([#288](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/288)) ([1ec5b6f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1ec5b6f6dbd2276dcafacfcf40ede4680c876da2))
* better support header parameters ([#251](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/251)) ([ea3f187](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ea3f1875e37f7cef409980927e84c3766263b068))
* enums should only coerce matching symbols into strings ([#271](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/271)) ([54a0d52](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/54a0d52532c402ef5cf184dfb5e48f499120680e))
* label optional keyword arguments in *.rbs type definitions ([#298](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/298)) ([484b14c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/484b14c1baf14839dfeba00e2b50b199aef45dce))
* **model:** base model should recursively store coerced base models ([#289](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/289)) ([6dcd8ee](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6dcd8ee4ddb0429c7c31db5ee483220356d8a288))
* pages should be able to accept non-converter models ([#310](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/310)) ([b68aa0f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b68aa0fb3f18bdcb64bdf12982159754696fa9fe))
* rectify a mistake where wrong lines were chosen during rebase ([#266](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/266)) ([c802cd1](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c802cd188f414afae8c51a12e067feeab78d6d46))
* resolve tapioca derived sorbet errors ([#301](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/301)) ([5def2e0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5def2e0076a1c599eef945ea87a157178753ebff))
* sorbet class aliases are not type aliases ([#297](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/297)) ([0b2ed47](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0b2ed47703ee3df1cdc7d54115cced647a9d2ff8))
* yard example tag formatting ([#304](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/304)) ([c2bbb15](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c2bbb1560c8f0d9eda8b0e9a7495521dba317625))


### Chores

* `BaseModel` fields that are `BaseModel` typed should also accept `Hash` ([#303](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/303)) ([0f19c3f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0f19c3f8111ba89df2f675eb0def49d2cd54e823))
* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([#293](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/293)) ([fcc16ec](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fcc16ec81f9da585d3a496f0a11a9831c5191973))
* add `sorbet` section to README ([#263](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/263)) ([520a6f6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/520a6f6e21bbcb4e2050d26684b9166244773b12))
* add example directory ([#296](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/296)) ([fcf4305](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fcf430583250d5d94dce5a4e189c7c4c1374f443))
* add more examples to README.md ([#264](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/264)) ([7ad1314](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7ad1314455b2c37a26253792f3754703277b7358))
* add most doc strings to rbi type definitions ([#278](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/278)) ([957e838](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/957e838cf25877b399bda8ba62c8b1ace20db9e9))
* add type annotations for enum and union member listing methods ([#305](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/305)) ([f22016b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/f22016b098d65cc4dc6e0c40d388bd6bcb782ba7))
* be consistent and use lower case headers everywhere ([#252](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/252)) ([17b99c3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/17b99c3773896718c3f892eed230487f7fd779bc))
* bump lockfile ([#255](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/255)) ([3bb9a63](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3bb9a63411a8c6feeccad1d8e3c928a60cd0bd04))
* disable dangerous rubocop auto correct rule ([#312](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/312)) ([35c3f9a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/35c3f9abfaa32eec7c85a620ec1958fbeb7190f6))
* disable overloads in `*.rbs` definitions for readable LSP errors ([#299](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/299)) ([59eae12](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/59eae125ac716b8592ec4085bbfa68d58e945520))
* disable unnecessary linter rules for sorbet manifests ([#292](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/292)) ([3860a7f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3860a7f5580c6c360b097ff4ebafbc20e0650113))
* do not label modules as abstract ([#287](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/287)) ([fdc9bab](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fdc9bab299e51058cf1e2e064ebd28b4529cf6ce))
* document Client's concurrency capability ([#291](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/291)) ([ad2e938](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ad2e9387a1b30c7d01d13a799b740fb007ead56a))
* document union variants in yard doc ([#282](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/282)) ([e74d95e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e74d95e3899561aa99679f419531860d0f759002))
* ensure doc strings for rbi method arguments ([#279](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/279)) ([852e73c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/852e73c7ae27707e67c74d3653f726b4f785831e))
* error fields are now mutable in keeping with rest of SDK ([#281](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/281)) ([230c82a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/230c82a6f34799acff8c3b9c2a5cb5d452882988))
* fused enum should use faster internal iteration by default ([#268](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/268)) ([039e8e3](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/039e8e3e70f5d95886526944365ffe93b20e7b57))
* generate better supported rbi signatures ([#260](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/260)) ([24a7a0b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/24a7a0be46446742ba39a4b5c04a6fa04c09d26c))
* ignore some spurious linter warnings and formatting changes ([#290](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/290)) ([cc00998](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cc00998f6c12586875def66d86f426d794e22250))
* improve documentation ([#269](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/269)) ([8827afe](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8827afee672339402beb1ed67159a77ecb326ede))
* improve rbi typedef for page classes ([#274](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/274)) ([b554a85](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b554a858f1c9f4a8904ff2cec74e88eb942b61ae))
* **internal:** add sorbet config for SDK local development ([#295](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/295)) ([8b134d2](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/8b134d228300cc041e4143dd8bcce4a792cf8157))
* **internal:** add utils methods for parsing SSE ([#253](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/253)) ([0bfd6f6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/0bfd6f69f8255beea8af70668b12cde28413c87a))
* **internal:** group related utils together ([#247](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/247)) ([7433b72](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7433b728498965cd6c403d8111f0574dfec54335))
* **internal:** prune unused `extern` references ([#242](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/242)) ([3a44bf4](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3a44bf4d6624ed702295e6b7f434f2d1cec1f4a3))
* **internal:** remove extra empty newlines ([#275](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/275)) ([4c4d3e7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4c4d3e77a972df4399be1d37585a091fbd26104e))
* mark non-inheritable SDK internal classes as final ([#284](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/284)) ([eec18e8](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/eec18e8d531fdb3de779dc1e8d7977c7ff919db9))
* modify sorbet initializers to better support auto-completion ([#261](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/261)) ([342f949](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/342f9492844abf691981fe616085dd0a90464efd))
* more aggressive tapioca detection logic for skipping compiler introspection ([#315](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/315)) ([ec93f39](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ec93f39cfd8c43e0c8eaf82daad90f74a6cab4c2))
* more readable output when tests fail ([#313](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/313)) ([68e6ebf](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/68e6ebf0e4790f24730ba2d89f54ca946e1e141b))
* move examples into tests ([#257](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/257)) ([fed4bb0](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fed4bb0f821bfe0072896519c5419f7ee7f316de))
* pagination ([#267](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/267)) ([37d0695](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/37d06957f4738772cc24bd00c3866e780cb95208))
* recursively accept `AnyHash` for `BaseModel`s in arrays and hashes ([#308](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/308)) ([a11f16b](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/a11f16bb8a1293bd958ce040d131f3e79805f1b3))
* reduce verbosity in type declarations ([#311](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/311)) ([000bb00](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/000bb001597f30b977cdbe86725968be0fc58c8a))
* refactor BasePage to have initializer ([#273](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/273)) ([d7310d5](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/d7310d52af5a201a2ddfc1f01b5a739efda60c72))
* **refactor:** improve requester internals ([#246](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/246)) ([cf4388f](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cf4388faaf7f871a005a6ef60b9e0f44f4ea03b0))
* remove stale thread local checks ([#272](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/272)) ([cda480c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/cda480cb4e4d044dc07b86d7ab922182dd34fa7a))
* rename misleading variable ([#256](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/256)) ([5d27783](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/5d277830203c12ee4745b2905d12cf7b02a12891))
* sdk client internal refactoring ([#286](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/286)) ([c22dc61](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/c22dc619a1f52aa868ce7d70a4a1be9f9811ddbf))
* sdk internal updates ([#276](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/276)) ([99b568c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/99b568c1aa7a2c459e55651f0844350d9644da40))
* slightly more consistent type definition layout ([#283](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/283)) ([6d3fab6](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6d3fab6b14967169a84e242391222572d270f7b1))
* support different EOLs in streaming ([#259](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/259)) ([3726c3d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3726c3d3f6f0fc92d4f6bc74092293601c84b5c2))
* switch to prettier looking sorbet annotations ([#309](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/309)) ([7a9697a](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/7a9697a41665dabd07d05a93be5db76f500ce8c7))
* touch up sdk usage examples ([#280](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/280)) ([ba2e4bc](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/ba2e4bcd80c478f7600c068ec7fd313707d3e1ce))
* update custom timeout header name ([#254](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/254)) ([05892f9](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/05892f94f01a5fd8a31d5211c1fbe886f93b966b))
* use generics instead of overloading for sorbet type definitions ([#285](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/285)) ([60c0274](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/60c02749fe27dada0a830b6dea3b7282d78ae742))
* use multi-line formatting style for really long lines ([#294](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/294)) ([3a1710c](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/3a1710c5523848f3edc1ad09f0cc917f74dc48b2))


### Documentation

* update URLs from stainlessapi.com to stainless.com ([#249](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/249)) ([4b26881](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/4b268816ee6ccd4f2c8e0757c853058baaaf82e1))

## 0.1.0-alpha.15 (2025-02-21)

Full Changelog: [v0.1.0-alpha.14...v0.1.0-alpha.15](https://github.com/Modern-Treasury/modern-treasury-ruby/compare/v0.1.0-alpha.14...v0.1.0-alpha.15)

### Features

* make `build_request` overridable ([#238](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/238)) ([6e779f7](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/6e779f7d539463db7518abdc0c71913580f2ab1f))


### Chores

* add type annotations for requester ([#239](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/239)) ([fa0d3fe](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/fa0d3fef94a8b038ef2b793feeb68e424a20c139))
* **internal:** refactor request stack ([#237](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/237)) ([1aa2a1d](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/1aa2a1d4937b4bffc69705563612ed50fec39c82))
* make MFA optional depending on token ([#234](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/234)) ([b5af3cf](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/b5af3cfce0877b2b9acb88cf0a700ea911ecb7fe))
* move basemodel examples into tests ([#236](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/236)) ([6243121](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/624312124e248600fb0292cabe46eccc0dc7f939))
* reorganize import ordering ([#240](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/240)) ([e862d05](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/e862d052b61501c761d2ca69b1eee81b7570c56d))
* sort imports via topological dependency & file path ([#241](https://github.com/Modern-Treasury/modern-treasury-ruby/issues/241)) ([2d17f3e](https://github.com/Modern-Treasury/modern-treasury-ruby/commit/2d17f3e3d27e8fdab2eff3574de3d65a2dc68f67))

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
