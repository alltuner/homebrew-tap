class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.11/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "5447d3eac388920e8c0edc7b9627212e4659d26162776388dd3d368442d5e1bc"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.11/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "7ae72b70b1de1e3aa9586546b311171095f75586561079a48ae8f879bba042df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.11/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec679295a858986184f47ecb948177c68fda4d26d90027e972c3ff68a775f11f"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.11/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "983cfcce05d6957cb889a0dbed809527c59a489f8f7ec60a046e214d0a636489"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
