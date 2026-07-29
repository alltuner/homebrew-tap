class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.14/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "18d6c683fa39a353455d5db64364a0b9fb451798fb29c3f4ebf2c275fbd6ee43"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.14/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "49f1b0b5cd0e70df68f8aaa7334cf6e152241d3991f37cdfaeed482b9d32af53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.14/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a1a37136652eb821b7ca5846c5aa1f7d9ebaf16388e7ede108363fb2ddb09e44"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.14/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c5193f43d498d037430ab96693eeb34b163a79f41a74cf3bdbb213e6cd5d26e"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
