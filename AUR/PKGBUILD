# Maintainer: Patrick Niklaus <patrick.niklaus@student.kit.edu>
pkgname=i3-gnome
pkgver=5.1
pkgrel=2
pkgdesc="Starts i3 inside a gnome session."
arch=('any')
url="https://github.com/TheMarex/i3-gnome"
license=('MIT')
groups=()
depends=()
makedepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=(i3-gnome-5.1.zip::https://github.com/TheMarex/i3-gnome/archive/5.1.zip)
noextract=()
md5sums=('c9a547518532b7b7f31e9f3574a2c03c')

build() {
  cd "$pkgname-$pkgver"

  make
}

package() {
  cd "$pkgname-$pkgver"

  make DESTDIR="$pkgdir/" install
}
