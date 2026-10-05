class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.18/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "c15a2aa60f01ee06cdb4027bd9a7c457b923f21712878af329a93102af377792"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.18/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "2303dd5b23e890d8994f7843b03650ebfee926acea141e199a7fd3f8aed2132b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.18/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e84d796476b300d1b6de6558cc5a8a839062dd4778315375eefb9e36d6df329c"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.18/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6237aa396c21c3e685917fb48bd4a35d9c239c4c9fa4c84a0dc5d715ebbf3821"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
