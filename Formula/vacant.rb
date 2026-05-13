class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.3/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "e677fd68b1e64b4969acf6d7f4d2ad14607d122c175cf0d62f5cc3f3879e7639"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.3/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "5482a772462e8c2996471431b281964c236cac8b81fc2eea53dffdea17adcec9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.3/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "665aa3e67f2a23d0fdaf198cfbd35a9c38bcd3d4d964b0f3b703e0f62dce0552"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.3/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a2afba257200eb833239dcec1f853fc0642d84385a3a3614bb86eaaa1ff3069"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
