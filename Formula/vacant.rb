class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.4/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "25216e98826b66d1e6510a503c6c55046293756ccef185c3954d734e8191c7ae"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.4/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "be19c3abd15a2b94610b7226af8b73c000c3c9b37df9c65d73f7d20ba0191d17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.4/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8e5e0f9b108de79d503672ddc0594f7b191a22ff10638f8593c233f5037e73d"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.4/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d0959a6120ff0d05d7209f9929f035ddaf7d06c11c68ffe7529932b6c8b1dbe"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
