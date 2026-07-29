class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.15/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "5fece1a48154c386dd23de20bb92b27bd14040c526fe51b9108125f5d771673c"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.15/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "fcf299f552bd5dd4e0b2f62932fc2b6718d3f59131d94e5f37c79a7b9f4e1dd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.15/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc5aff1ecde6d78c1432ebc209886bfe77bb3dca9a9917773ed93ce3c159857d"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.15/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2374a4506ceaec0571391b9fcefac672cad38bc0400171be3f2abd82fa0bc8a5"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
