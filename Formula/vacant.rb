class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "0b5128b32e41d35e0205ee1e388e5e4f71b142d44621af7a5d064c6e68a7d336"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "23f56c3e975658c75d269a6c9099b814876da411f3d4e680c482dfa91994f28f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05f0a2746d5c57e1a76d18a74f1b3c878e7a1a29b6b1a2b1530ad1458d71e850"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d97ba2f8e6af97df9a23de81f0066920d10c6501a6a2e079b0dad6233db68e63"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
