# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Extra"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A grab bag of modules"
HOMEPAGE="http://src.seereason.com/haskell-extra"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/bzlib:=[profile?]
		dev-haskell/hunit:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/network-2.4:=[profile?]
		dev-haskell/puremd5:=[profile?]
		=dev-haskell/quickcheck-2*:2=[profile?]
		dev-haskell/random:=[profile?]
		dev-haskell/regex-compat:=[profile?]
		>=dev-haskell/unixutils-1.51:=[profile?]
		dev-haskell/zlib:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

S="${WORKDIR}/${MY_P}"
