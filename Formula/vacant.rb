class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.1/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "7c2f3e1d96694fb27321418f0cdb9f6f8d3bd2b9a523599f636d67c52164b098"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.1/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "e3d0c0b92efd4560938535e592039fe97b14cbc19945c46fee044f1c86e1eb9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.1/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48fe9dafb3e3baeb8e5e5a64119c160101950d4c26b29295e0fae4c87b9ba621"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.1/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce023950e9e88dd6abe4850219948fc5fea3f6d70c2a6e87817ed8c80301ce87"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    system bin/"vacant", "--help"
  end
end
