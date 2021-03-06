# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Lambdabot is a development tool and advanced IRC bot"
HOMEPAGE="http://haskell.org/haskellwiki/Lambdabot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/arrows-0.4:=[profile?]
	>=dev-haskell/binary-0.5:=[profile?]
	>=dev-haskell/data-memocombinators-0.4:=[profile?]
	>=dev-haskell/dependent-map-0.1:=[profile?] <dev-haskell/dependent-map-0.2:=[profile?]
	>=dev-haskell/dependent-sum-0.2:=[profile?] <dev-haskell/dependent-sum-0.3:=[profile?]
	>=dev-haskell/dependent-sum-template-0.0.0.1:=[profile?]
	>=dev-haskell/dice-0.1:=[profile?]
	>=dev-haskell/edit-distance-0.2:=[profile?]
	>=dev-haskell/haskeline-0.7:=[profile?]
	>=dev-haskell/haskell-src-exts-1.14.0:=[profile?]
	>=dev-haskell/hoogle-4.2:=[profile?]
	>=dev-haskell/hslogger-1.2.1:=[profile?]
	>=dev-haskell/hstatsd-0.1:=[profile?]
	>=dev-haskell/http-4000:=[profile?]
	>=dev-haskell/iospec-0.2:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?]
	>=dev-haskell/logict-0.5:=[profile?]
	>=dev-haskell/misfortune-0.1:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?]
	>=dev-haskell/monadrandom-0.1:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/mueval-0.9:=[profile?]
	>=dev-haskell/network-2.3.0.13:=[profile?]
	>=dev-haskell/numbers-3000:=[profile?]
	>=dev-haskell/oeis-0.3.1:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/quickcheck-2:2=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/random-fu-0.2:=[profile?]
	>=dev-haskell/random-source-0.3:=[profile?]
	>=dev-haskell/regex-tdfa-1.1:=[profile?]
	>=dev-haskell/safesemaphore-0.9:=[profile?]
	>=dev-haskell/show-0.4:=[profile?]
	>=dev-haskell/split-0.2:=[profile?]
	>=dev-haskell/syb-0.3:=[profile?]
	>=dev-haskell/tagsoup-0.12:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-haskell/unlambda-0.1:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-haskell/vector-space-0.8:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?]
	~dev-lang/brainfuck-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

PATCHES=("${FILESDIR}"/${P}-codepage.patch
	"${FILESDIR}"/${P}-ghc-7.8.patch)
