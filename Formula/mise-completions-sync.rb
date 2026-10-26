class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.20/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "46a59629813b9355e1c672bdea86b5ba74a381b829430d690e573dd3a47f437e"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.20/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "f244615a6b82b95f43fdbcbe143e65457e109b185408e502e14ed364d73cb6b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.20/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6158f6230c303d3a2e74c7c2cf33e142946e5eb2e2adbaa1d40db551f3e47550"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.20/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95872a973a84ace033f534a72606f56a56074093ba9f45fda689651742b317de"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
