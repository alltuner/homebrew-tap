class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.4/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "cb5fd4204d0f0f4c6cca0215d03c17858454feab421a57fc081006f6be9d6e26"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.4/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "709dbf5bf66951197ab03042a7c36fe01d10f6e38e64db587e68e7dd97a302c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.4/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a53ed3c09df0506845430d4f8483fc53cf9d290e9cc0ad0ee793480c5ccb3e6"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.4/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63369e9e4b4b0b8205b4157d544c7e66050ad0d61dd14ed6ca522f746dc5450f"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
