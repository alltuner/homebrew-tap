class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.19/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "8ed5ee0e80db7ac0cba043dde8b4c9a2d5c36bb5b54acebb7d3e5263081e728b"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.19/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "846b0b3cc290ff8e11fc938d6aeef52791797cad2fdbfedf06d7b37c01ee4ca5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.19/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97180b5d51858d008c48a009564aaa1aa34d004f81d04ffaf3f303be85921c30"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.19/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "149466e6a72f7449a039d0e62e01b3a90da7cb6138242c945718706541c000d3"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
