class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.2/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "2dc5a0badf90cd7e2e6f36187224c105d820676e946efa35d1168d90f91c9dc2"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.2/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "6400966803166318d79db9cfa108ffadc5ae564a8925ec5cae0657bca0960de3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.4.2/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a11630104b87fed68827acbb045bb2e9e1674eeb4eeecfe36787ae90777a4b6e"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.4.2/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1dccbba670ba0093399161daf8eefca0ee5aa00698c17c3579e5b4cd689e976"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
