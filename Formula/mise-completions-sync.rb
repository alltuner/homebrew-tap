class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.12/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "abba73174c03abb0fa3713b4a08d2c33e2b791b9cfd247fd7857d15f16a86ca1"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.12/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "7c6cd1887976849e18dc4a9ef1a6dae6f982a5b3deb4136342d98ff9bf488f84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.12/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53a013b1602daee43af4ebe913e89a12fa3f0cf7ce01829e42d8a687f6a9796a"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.12/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26baf6c296ce4724adadb731fc5f24a39debdf3a74bfe4ef264c879774e1a39e"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
