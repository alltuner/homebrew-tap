class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.1/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "ffe114bf3f924b6406267db0ad3e356d44e2022281ca3313303ecf681e585875"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.1/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "6e7114d480a450169a63a6bffda50746fea324cb879eea772487eaeb1d52badb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.1/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "994d5fdd01282e03bd798e45c2c8b966fba9bdeafdc402d7e70b6ede03a7af9f"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.1/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "840dabc003a67532a11b9e56eaf518354914e194e362d1fb0966e2c29f5dbf5e"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
