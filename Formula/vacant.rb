class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.16/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "82f4e5474d56785371958221fe7f77e1cdca4e13788a480bdf0cee6ac60c65d0"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.16/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "14c59e33772d9bbaf3effd50c56d6fe20d1dc5e16dbccf7f6cf8bb161084241f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.16/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea88ce4771bae257ecb27b1a38c823e102d64c8b13e3809db757c64e1ffd8647"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.16/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b508c283696291f7c487b2b2bf010661800a70ed7d1895d353c082981d5292b6"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
