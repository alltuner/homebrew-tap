class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.16/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "1c35e22e7cd777aa7cf7581e35e97be78e787313585a0771df215902cd5bdb8c"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.16/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "07455415caa11476a1f16795736d01a91a37f77a3cbdbf0f593c6bd2e9363625"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.16/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b05cb30a6d3a8d4d45cba584d601ea52a495e7558f9893ee07a367987c3e011d"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.16/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "395abb0951f105e50946c3956b21e292fb27040dcf03afcc96498c52b7649878"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
