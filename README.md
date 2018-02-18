Blemflark Core integration/staging tree
=====================================

[![Build Status](https://travis-ci.org/blemflark/blemflark.svg?branch=master)](https://travis-ci.org/blemflark/blemflark)

https://blemflarkcore.org

What is Blemflark?
----------------

The blemflark, also known as galactic credits, and incorrectly as blemflarcks, are a form of currency. After millenium and millenium of being the solid galactic currency, more so than flurbos, its value was sent to zero dollars on Earth C137 date April 1st 2017. In the episode "Auto Erotic Assimilation", it is revealed that Rick was attempting to cure the Korblock alien Blim Blam of his space AIDS so he could patent and sell the cure for billions of blemflarks.

In the episode "The Rickshank Rickdemption", Rick programmatically changes the value of the blemflark from one to zero of itself to collapse the Galactic Federation.

The Blemflark Crisis was created when Rick Sanchez managed to infiltrate the systems at a Galactic Federation Prison and changed the value of Blemflarks to 0 in revenge against the federation for their actions in "The Wedding Squanchers" This collapsed the entire galactic Federation after its president committed suicide, leading all aliens to leave Earth, and life for Gromflomites on Gromflom Prime to turn into hell; with hunger crisis and almost everything destroyed, including much of the residences previously on the planet.

The Galactic Federation in response has created a blemflark blockchain currency that are abbreviated as BFM for the people of Earth C-137. The genesis chain was created on November 27th, 2017 and mined the next day.

Blemflark addresses are in the BN5wegGU6F9CRDRnTr5WtnhZLiATetUAbL format and most miners will be able to be used the same way that bitcoin is currently mined; ASICs included up until block 16128 when BLIP8 (Blemflark Longevity Implementation Plan) is enforced. BLIP8 implements an exponential difficulty algorithm that enforces greater difficulty at earlier block times.

Blemflark is an experimental digital currency that enables instant payments to anyone, anywhere in the world. Blemflark uses peer-to-peer technology based on Bitcoin Core technology that operates with no central authority. While the Galactic Federation created the initial genesis block, we have no further control of its fate.

License
-------

Blemflark Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/blemflark/blemflark/tags) are created
regularly to indicate new official, stable release versions of Blemflark Core.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

The developer [mailing list](https://lists.linuxfoundation.org/mailman/listinfo/blemflark-dev)
should be used to discuss complicated or controversial changes before working
on a patch set.

Developer IRC can be found on Freenode at #blemflark-core-dev.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and OS X, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

Translations
------------

Changes to translations as well as new translations can be submitted to
[Blemflark Core's Transifex page](https://www.transifex.com/projects/p/blemflark/).

Translations are periodically pulled from Transifex and merged into the git repository. See the
[translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as GitHub pull requests because the next
pull from Transifex would automatically overwrite them again.

Translators should also subscribe to the [mailing list](https://groups.google.com/forum/#!forum/blemflark-translators).
