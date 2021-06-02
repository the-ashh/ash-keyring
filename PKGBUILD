# Thanks for archlinuxcn's package that I've used as template!

pkgname='chaotic-keyring'
pkgver='20210602'
pkgrel=1
pkgdesc="ash's PGP keyring"
arch=('any')
url='https://theash.xyz'
license=('WTFPL')
depends=('archlinux-keyring')
install="ash-keyring.install"
source=("keyring-$pkgver-$pkgrel.tar.gz::https://github.com/the-ashh/ash-keyring/archive/refs/heads/master.zip")

package() {
  cd "$srcdir/keyring-$pkgver-$pkgrel"

  make PREFIX=/usr "DESTDIR=$pkgdir" install
}

sha512sums=('8fc7ebff9921a661049cf96773325e2c724afdd706b7f9092fce7a1632fa188e80c835768fc5704f8ff81141d2c4be1d1f90d0d4acce627dcb2dfc551b4186b2')
