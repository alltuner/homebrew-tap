class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.15/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "344ff0ce7266e35a28400a35acb0980291de84ce8270414fe89e27bd0d71cf7f"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.15/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "2134db69d386f093be678483e1689fe08708bdb6700b337bf1a98c2fa6991f7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.15/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edb8f3e83190f598ffbcf2eed311db537e181ec880c2475dfc97f1453235558f"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.15/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e1ae576f1bf2731466187a6b00df0d47ce29a8bddce039b566da11dc412a997"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
