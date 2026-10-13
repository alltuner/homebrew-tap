class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.19/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "ce82299e7b15cc4c98fef8af77cf2fb396e986ca46ee72b51052e759dd1bd733"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.19/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "31e073330079337af66474c64d9e2f712e80c5689e3e875264df6c8357da899d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.19/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51c47f44408602cda2a34c2192e7aacd97a1b5c66215e9d03d93ed7d6ba42a7f"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.19/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "254ef47fa165d9c344eeee8027e4bcf9970d3226f921036225b435a22e479b87"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
