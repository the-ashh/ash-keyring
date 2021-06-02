# Thanks for archlinuxcn's package that I've used as template!

pkgname='chaotic-keyring'
pkgver='20210602'
pkgrel=1
pkgdesc="ash's PGP keyring"
arch=('any')
url='https://theash.xyz'
license=('WTFPL')
depends=('archlinux-keyring')
install="chaotic-keyring.install"
source=("keyring-$pkgver-$pkgrel.tar.gz::https://github.com/the-ashh/ash-keyring/archive/refs/heads/master.zip")

package() {
  cd "$srcdir/keyring-$pkgver-$pkgrel"

  make PREFIX=/usr "DESTDIR=$pkgdir" install
}

sha512sums=('223fb30de4b0cfae8fae7a324015586b26343cac5b4ccf6dacd960566702efe5afa10898d75a50372193c1a7deac4522435baba66c44e2dc6bc7e930c0bbe368')