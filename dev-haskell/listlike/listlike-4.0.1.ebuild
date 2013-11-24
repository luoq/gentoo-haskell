# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="ListLike"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Generic support for list-like structures"
HOMEPAGE="http://software.complete.org/listlike"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-0.12:=[profile?]
	>=dev-haskell/vector-0.5:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-3
		>=dev-haskell/random-1 <dev-haskell/random-2 )
"

S="${WORKDIR}/${MY_P}"