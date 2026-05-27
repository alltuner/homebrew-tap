class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.9/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "03f606bac013200a7dff401f5d5a8fb3ea597107b665382c66fc89b5f27f6828"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.9/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "34afffe5f0e7885b34f7521add2c96aa5de3a18d0ceaad6b1b23a124eeec6637"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.9/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a9326dc9620004e348639ad39e69b9ef6dedb5518a3169c4fae13c6f7d0c19e"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.9/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1eabe00b5f977eb8d4db44777cf4825a15d85f6b004a5f1fea08eb753fbc333"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
