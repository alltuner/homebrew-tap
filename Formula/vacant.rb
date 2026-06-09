class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.9/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "c280b2c2580d90e3e5106f5b9a0fadc2213ce1acbd10edce8080804bc4cd88c4"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.9/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "ca7836a78653af1eb2bd41a1edae8cbb5b29ebea31bc70f85c8436bc8e65369e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.9/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "26bd6b80ee0052b345895911470a799a8b982e6ef8e5616cb0d759ce31698d2e"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.9/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc076d6b2fbbab2de9b2479847c445677bd23169f660b8e4b5d3c67b2472bb3f"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
