# Thanks for archlinuxcn's package that I've used as template!

pkgname='ash-keyring'
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
  cd "$srcdir/ash-keyring-master"

  make PREFIX=/usr "DESTDIR=$pkgdir" install
}

sha512sums=('e9cdc79ee62543fe4fe15aacd8b8477c2c8b749823fab9bed85af2553c4d221dcf4aea8ebc457555e855b8d4ea4a778042e6d83603a391a5feac7955cf9dc7de')
