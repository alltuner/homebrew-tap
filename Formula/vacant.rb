class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.6/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "f03f438e9cb70e4a3d60a6a6cec62b049c5ae980340900e11ee385289baf9d1a"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.6/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "385c35278dfb6111289e1769bf14fe845650d44154752f538e843165be064937"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.6/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f920de56f705308b39b5a3045f9d0980749e58bc49243c8ab1591ecf3bf6b76b"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.6/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b142509dd4baa100f5e5f74c6aa6c21b5b45736aed2556a1679c41187eceeebc"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
