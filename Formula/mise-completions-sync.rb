class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.7/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "048f264dcd8480059121f6f129769fc85c43341c5b6531a93649267ca4899e1a"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.7/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "464c8c7e1ed7b11131404bb68ee13d1a26c9b380dc83cb39130acf0105a2fd0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.7/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5fe61e68214388bbf38316bfbd6a5768fea72282e68e1756a062613ffcd71e16"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.7/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "133a7f843ada25d7024eecdc2bd12fb6657e23f321090f0077766e3d9e69c65e"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
