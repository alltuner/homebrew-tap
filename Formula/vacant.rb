class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "7106f399a1930422d6d82178fa9854cb585add20b0d2e1df761175bc5652cf32"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "df223fade12491430eadf96e8a75da96e26e90e963a59d78f289d2a0e49b6aa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21bb1eb810be7485f86462d0ef2f8d1a63712d1c2971ae6461ba811e3ea9653c"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.0/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b183a44810e8060a788d02ce5291956bc5197d7c967e43c3b9a58e2bf0ac034"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
