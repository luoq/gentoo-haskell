# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal user

DESCRIPTION="Parse XML files from The Sports Network feed"
HOMEPAGE="http://hackage.haskell.org/package/${PN}"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	>=dev-haskell/cmdargs-0.10.6
	>=dev-haskell/configurator-0.2
	>=dev-haskell/hdaemonize-0.4
	>=dev-haskell/hslogger-1.2
	>=dev-haskell/htsn-common-0.0.2
	>=dev-haskell/hxt-9.3
	>=dev-haskell/missingh-1.2
	>=dev-haskell/network-2.4 <dev-haskell/network-2.6
	>=dev-haskell/tasty-0.8
	>=dev-haskell/tasty-hunit-0.8
	>=dev-lang/ghc-7.6.1
	test? ( >=dev-util/shelltestrunner-1.3 )
"

pkg_setup() {
	haskell-cabal_pkg_setup
	# The user/group are not needed to build/install, but they are
	# referenced in the default config file and we restrict access
	# to the global config to this user/group by default.
	enewgroup "${PN}"
	enewuser "${PN}" -1 -1 "/home/${PN}" "${PN}"
}

src_prepare() {
	# Uncomment the two lines which set the run_as_group/user to "htsn"
	sed -i 's/# run_as_group/run_as_group/' "doc/${PN}rc.example" \
		|| die "unable to set run_as_group in ${PN}rc"
	sed -i 's/# run_as_user/run_as_user/' "doc/${PN}rc.example" \
		|| die "unable to set run_as_user in ${PN}rc"

	# Uncomment the line which sets the output_directory, and set it to
	# /home/${PN} (the home directory of our dedicated user).
	local cfg_gentoo="output_directory = \"/home/${PN}\""
	local cfg_default="# output_directory = \"/var/lib/${PN}\""
	sed -i "s~${cfg_default}~${cfg_gentoo}~" "doc/${PN}rc.example" \
		|| die "unable to set output_directory in ${PN}rc"

	sed -i "s/localhost/127.0.0.1/" test/shell/command-line-feed-hosts.test \
		|| die "unable to force ipv4"
}

src_install() {
	haskell-cabal_src_install
	doman "${S}/doc/man1/${PN}.1"
	newinitd "${S}/doc/init.openrc" "${PN}"

	insinto /etc
	newins "${S}/doc/${PN}rc.example" "${PN}rc"

	# There's nothing sensitive in the config file as installed, but it
	# is possible to set a username/password globally. Better to let the
	# user loosen the permissions than require him to tighten them.
	fowners "${PN}:${PN}" "/etc/${PN}rc"
	fperms 640 "/etc/${PN}rc"
}
