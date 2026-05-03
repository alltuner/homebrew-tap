class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.2/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "c52e2012ede5033fc5b8a66c601b25b1676aa7faeddacbef2769a429f1e4b012"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.2/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "531bc6c734106aa2123e513d7673439ccfbf522fbf82eaec5de6b8dd3d96dba8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.2/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86dff0ba4203edcbe43310b65991dfdb9d44743245535cbec8dcef6d3b78c9ba"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.2/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "773e0fec6e258026030dad68992a2312e684220c8fea5fd44fbb87c6e29bf34c"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
