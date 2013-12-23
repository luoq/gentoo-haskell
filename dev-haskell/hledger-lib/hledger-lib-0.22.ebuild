# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Core data types, parsers and utilities for the hledger accounting tool."
HOMEPAGE="http://hledger.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cmdargs-0.10:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	dev-haskell/csv:=[profile?]
	>=dev-haskell/data-pprint-0.2.3:=[profile?] <dev-haskell/data-pprint-0.3:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/pretty-show:=[profile?]
	>=dev-haskell/regex-compat-tdfa-0.95:=[profile?] <dev-haskell/regex-compat-tdfa-0.96:=[profile?]
	>=dev-haskell/regexpr-0.5.1:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/split-0.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/utf8-string-0.3.5:=[profile?] <dev-haskell/utf8-string-0.4:=[profile?]
	>=dev-lang/ghc-7.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0.0
	test? ( dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"
