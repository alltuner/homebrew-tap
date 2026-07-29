class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.14/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "6aca1f146c7fc72846b7c046d169303203cc2ad334df440a285dde9b739f400d"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.14/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "57d0ca9fbff78a0b0e14ea5ba57d2d32f84f706735ad3cb1c00b83221408fc03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.14/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c6e88d2a23169e3d8d583c2c4aff962295ba0df37c0b8cf704b3d80904e8b88"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.14/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c4f2e4ffbeb2712a6b9b9a27b6d63cdb2e103fd74866c807167d007dc3152f1"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
