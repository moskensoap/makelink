# Maintainer: moskensoap <141073988+moskensoap@users.noreply.github.com>

_realname=makelink
pkgbase=mingw-w64-${_realname}
pkgname="${MINGW_PACKAGE_PREFIX}-${_realname}"
pkgver=1.0
pkgrel=1
pkgdesc="Creat make.exe linking to mingw32-make.exe (mingw-w64)"
arch=('any')
mingw_arch=('mingw32' 'mingw64' 'ucrt64' 'clang64' 'clang32' 'clangarm64')
url="https://github.com/moskensoap/makelink"

license=('MIT')
makedepends=("${MINGW_PACKAGE_PREFIX}-cc"
             "${MINGW_PACKAGE_PREFIX}-make")
depends=("${MINGW_PACKAGE_PREFIX}-make")
source=("https://github.com/moskensoap/makelink/releases/download/${pkgver}/makelink-${pkgver}.tar.gz")
sha256sums=('82b74c752fdd91ce20cea9e109de31814d71990e2e1a35526d92d206fe0b905b')


build() {
  cd "${srcdir}/${_realname}-${pkgver}"
  mkdir -p "${srcdir}/build-${MSYSTEM}" && cd "${srcdir}/build-${MSYSTEM}"
  cp -r "${srcdir}/${_realname}-${pkgver}"/* ./
  mingw32-make
}

package() {
  cd "${srcdir}/build-${MSYSTEM}"

  install -D -m755 "${srcdir}/build-${MSYSTEM}/make.exe" "${pkgdir}${MINGW_PREFIX}/bin/make.exe"
  install -Dm644 "${srcdir}/${_realname}-${pkgver}/LICENSE" "${pkgdir}${MINGW_PREFIX}/share/licenses/${_realname}/LICENSE"
}