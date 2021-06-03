# Thanks for archlinuxcn's package that I've used as template!

pkgname='ash-keyring'
pkgver='20210602'
pkgrel=2
pkgdesc="ash's PGP keyring"
arch=('any')
url='https://theash.xyz'
license=('WTFPL')
depends=('archlinux-keyring')
install="ash-keyring.install"
source=("keyring-$pkgver-$pkgrel.tar.gz::https://github.com/the-ashh/ash-keyring/archive/refs/heads/master.zip")

package() {
  cd "$srcdir/ash-keyring-master"

  make PREFIX=/usr "DESTDIR=$pkgdir" install
}

sha512sums=('SKIP')
