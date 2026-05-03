class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "638db4f08b78d7871a3329b1011b4cd5b7f4a264c0b215e05dbb3349cd81e5b0"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "53e9c65cda1ec8aeef7a3e2bd65aaac762bc4e25b691f96ec7a3d186e05c1191"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02e60eb5ceca8ad099ebf5c042c2522b1cb54922acad1ba90f8cc6118f1baba7"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d6299f8c2132cd266881d4e28ee2247a85d73beb0f505561e951ec257f4477b"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
