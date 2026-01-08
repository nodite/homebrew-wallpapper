require 'formula'

class Wallpapper < Formula
  homepage 'https://github.com/nodite/wallpapper'
  url 'https://github.com/nodite/wallpapper/archive/1.7.5.tar.gz'
  sha256 'a1a470084d9b03af999e85f0e33cf8128aef05a5f11b16a0e4638feeee0580d0'

  head 'https://github.com/nodite/wallpapper.git'

  depends_on xcode: :build

  def install
    system 'swift', 'build', '--disable-sandbox', '--configuration', 'release'
    bin.install './.build/release/wallpapper'
    bin.install './.build/release/wallpapper-exif'
  end
end
