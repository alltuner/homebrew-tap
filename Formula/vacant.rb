class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.7/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "745df4b64daeee1d1a43c894e6d80433450477297e3a7dabcdb45b6bcaea9c1a"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.7/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "b59586b8a87c5bba7b57d3befb8e648e979f05b69af593f122e87723ccd34395"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.7/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4130779af268ba74b517b0cd28c899ceb476b06f7e757b5440e6e042d77ffa3"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.7/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8f6276d58988d32f69b63764cb1d7526f6ce18a1fbe9ddb16e139e8f79094be"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
