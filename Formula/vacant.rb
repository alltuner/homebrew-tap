class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.8/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "e37d15a664ad08e3fa50ac4330623661bc74f52b9e40ceae0bacba370addf211"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.8/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "b8d019bbe5704f264b0c1df77c3cd127ec0d736a4b860a0e7216e21d5e6a0e20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.8/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ce4ec11896fdaa2867fc62fc75449e23ebb4b569c55fce5cb7720d840fb81ef"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.8/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f10e3a157887fd274545ae87aa9e7e93eae5695f06c9c50156d53313900ca4f2"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
