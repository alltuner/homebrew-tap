class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.17/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "303e947cefad0adf4e71042c21242fff34ff2d81dfbaf801401f30a47dc76885"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.17/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "18285cfd72daf0ee738a1169f6c467292442de4dc14c8a5cd3e12f7b91cad9d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.17/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64b9032d1a4db1a6d7a1a1cebf84f15186b9feeafbe733781bcfdf81477dd90f"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.17/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae7ba1995da768a4bf665b84a6b69739dbec99d806f7d2a34c3d21c9355d9fdd"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
