class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.11/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "37b89385091265c5612d674d1778bda059dcfe4515da83445526fdcc88c05123"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.11/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "8fda4c72a8bcceaab4df23f0b85f2426b661f6369848f648265276d0a5104b32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.11/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b4ed6d01676e191d0c0d61ac6886bcab15cf89650888cad8fee44bf72ef6935"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.11/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8d0395b0bf3a18690259e8c6d7c29be21c5d3a45a363d49dbe2e8d01b42ae10"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
