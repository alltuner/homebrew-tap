class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.5/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "d8d6c321785ffdc7ae92e7cd8cd4ca08cc63c901b0e71b63fe59f3d79ea758f9"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.5/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "aaf23920c57456240d17e9f193e8bf8789c1561c372d142f8da04572102feab3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.5/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc638b5012263542819cfd4af92642d30b0e2d1c4f005b63a70ba23d826fc5dc"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.5/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f30aef9565d930572cbdff1fc003ba762b318b0c050d783c40b57490591d0322"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
