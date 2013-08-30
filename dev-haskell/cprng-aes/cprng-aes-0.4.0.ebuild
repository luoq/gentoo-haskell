# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Crypto Pseudo Random Number Generator using AES in counter mode."
HOMEPAGE="http://github.com/vincenthz/hs-cprng-aes"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="cereal"

RDEPEND="=dev-haskell/cipher-aes-0.2*:=[profile?]
		=dev-haskell/crypto-random-api-0.2*:=[profile?]
		>=dev-haskell/entropy-0.2:=[profile?]
		dev-haskell/random:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		cereal? ( <dev-haskell/cereal-0.4.0:=[profile?]
			>=dev-haskell/cereal-0.3.0:=[profile?]
		)"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cereal cereal)
}
