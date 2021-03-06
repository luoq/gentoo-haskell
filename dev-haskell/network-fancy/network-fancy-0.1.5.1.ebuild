# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Networking support with a cleaner API"
HOMEPAGE="http://github.com/taruti/network-fancy"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-0.1.5.1-ghc-7-8.patch
	# Remove the compile of non-existing test.hs from Setup.hs
	cabal-mksetup
}
