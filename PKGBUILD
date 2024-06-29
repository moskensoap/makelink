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
source=("main.c"
        "makefile"
        "LICENSE")
sha256sums=('9ae498b0b650332fa431ea06409709085e857ce37ee82a1538fa19af0d1f4809'
            'fa230e0ad61109d48d06dff9bff7947acbe348705060ae688b10e7da111d4850'
            'ae1ac950060baad6e25e65f23e92bad0e0cb9e8de258cafcec5d25cba861af4a')


build() {
  mkdir -p "${srcdir}/build-${MSYSTEM}" && cd "${srcdir}/build-${MSYSTEM}"
  cp "${srcdir}/main.c" ./
  cp "${srcdir}/makefile" ./
  cp "${srcdir}/LICENSE" ./
  mingw32-make
}

package() {
  cd "${srcdir}/build-${MSYSTEM}"

  install -D -m755 "${srcdir}/build-${MSYSTEM}/make.exe" "${pkgdir}${MINGW_PREFIX}/bin/make.exe"
  install -Dm644 "${srcdir}/build-${MSYSTEM}/LICENSE" "${pkgdir}${MINGW_PREFIX}/share/licenses/${_realname}/LICENSE"
}