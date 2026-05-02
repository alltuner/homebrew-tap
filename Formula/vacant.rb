class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.0/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "c742b29b85345ee180a229d769f7eb62293977f7ac1813aacdb38fd9eee31f71"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.0/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "48742f12010e33626bfe5f3354b82dedc563b7a0ddde90dabe878cc3f103b539"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.0/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf511d9b6071699df3ead66a2a8a7c848666b45274b6a8cf9b42f04c973afa22"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.0/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b909bc65040ef36e7f6df46142da1d36007b6996ab30ada9f512fd58b3b85a5c"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    system bin/"vacant", "--help"
  end
end
