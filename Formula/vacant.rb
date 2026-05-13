class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.1/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "1ac4241e032423a9c38be0dff2d8d47616187d61beec17b3fe966a0700cb78fe"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.1/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "01716c1eb743dbb2661e0ebfa48d829c0f467543450c0e24b46f0c63c47dd571"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.1/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f5fb925d1c1fa7833945c322fe3e58a62c3ac912e5ec8d5642f784b20009769"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.1/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "634fb3543625675e526bc8fd764936a0834abee03495b37b44133ac9ca5373f8"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
