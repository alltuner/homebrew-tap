class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.4.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.13/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "a7563287cd97c48626ec94db3b146d0e2eaba2be39e425f513ef7af40c604696"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.13/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "671f08b49963ddaa4c26513c07781d73ba06f405b380db062e3bd01636e0e61f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.13/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be31da961bd12a7ebd9e3096d18a0651ee3cec47b086c65fb9fe496aedc0e2b6"
    else
      url "https://github.com/alltuner/vacant/releases/download/vacant-v0.4.13/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26a1bb939bbcd3b049dd822a6ac285ab469f1915e734749ad70a88f41325438f"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
