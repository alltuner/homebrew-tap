class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.4/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "ac32ed2abfd1eb40b53b880669509d23c909da5a29b2b85d3c95033a452620dc"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.4/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "c0e6e2a9a2f552995583a0ccf50cb67ab3e13966209ec4a9d9ee56c595b5770f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.4/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03c6685d0ab0efb7c5315c0e17a14e37c6092c4f17b70396493565a7de1e03e1"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.4/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06b313a63b0af5765b88c490307ad2573c1b17abf5533ec7459d3a3131e8f752"
    end
  end

  def install
    bin.install "mise-completions-sync"
  end

  test do
    system bin/"mise-completions-sync", "--help"
  end
end
