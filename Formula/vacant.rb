class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.12/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "a34f2076924de1ce8943454fe3dcab76a43eca540002d31a31b6b059d207a238"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.12/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "f6ccd0316f2c3562b2685a083afcfdc4904be46d7d11a3bae3c51a75f4d8f512"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.12/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6157b2ddc59365a143907e024884450f34c4fddf75952329f3a41eb82b3b3862"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.12/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85f333789903772f2f37e39871ba0a3311b4c5437825e9bf2d71e78d20a5747d"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
