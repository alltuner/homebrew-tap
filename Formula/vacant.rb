class Vacant < Formula
  desc "Fast domain availability checker via authoritative DNS"
  homepage "https://github.com/alltuner/vacant"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.3/vacant-aarch64-apple-darwin.tar.gz"
      sha256 "2a56f42433e2bf4c0e51e74151102dd37c3e1ba7038db18d2e3174ee29b33020"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.3/vacant-x86_64-apple-darwin.tar.gz"
      sha256 "3ef503c549537c6112ecaa76ab9def2f9e281297874d19b20ff237bf7cdfd4f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/vacant/releases/download/v0.3.3/vacant-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4050eed5394b7526509ce51d19be9acbcc9b38748bffdccb40307e96851c914"
    else
      url "https://github.com/alltuner/vacant/releases/download/v0.3.3/vacant-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fffbb92682fea1c3c7aee7aee0434fd07eeb5692befa4644f8b4c98675865466"
    end
  end

  def install
    bin.install "vacant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vacant --version")
  end
end
