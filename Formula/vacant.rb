class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.17/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "9811ac9b8df9b3e25f2d73fee3775d9771d598965d4afa039fa99da57d23e3a7"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.17/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "60798964dc0118f4996b237927afe37ade46db4b8e8ab763ee8cbf97dbab21a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.17/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cdd2a7e25288c4610709e7a77d9c714ff40f6faec1cdf823efddb7f7b4663a7"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.17/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "475693cc634f6b689e04366dc0b53f7bead0798ecebca5977a7914b65435afcd"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
