# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999
#hackport: flags: -mtl1,-warn-as-error,-old-base,-network23

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HTTP"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library for client-side HTTP"
HOMEPAGE="https://github.com/haskell/HTTP"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~ppc-macos ~x86-macos"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/network-2.2.0.1:=[profile?] <dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/parsec-2.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	dev-lang/ghc
"

RESTRICT=test # missing files

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-mtl1 \
		--flag=-network23 \
		--flag=-old-base \
		--flag=-warn-as-error
}