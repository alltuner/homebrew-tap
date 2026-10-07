class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.18/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "5d1f90560fd0b82cd82204d0b032184430a42b8e32ff16237ccd78d99c8df52b"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.18/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "812dd0d523a8fe3b64a5fcbea91a61a6819d7ad50871fe31689abb16e066c114"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.18/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2df458f2b9336698038780f577fd1b43d0f0bc73d53c27575569f05acead3371"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.18/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31f647641b08b03bc0ec2a59ab8336903b4715c2dced8d200f567a6328d2cef3"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
