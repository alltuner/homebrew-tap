class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.5/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "20fb622e9ffaa83a059baf39ed182b503e803923e27e5e147e921ee7465fae6f"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.5/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "a3ca10cad012122e37e31a7e9058c7713b5ec95dccc3950ec8545c8d865c0423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.5/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0be89fbf562a1de149ab9d04188a678f79c54dae9d43df7463ddd47357b1ff73"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.5/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "275d9dde1bf72f5a6deeca153613979b851437f86c3ea01b6110f18c09cdf8f3"
    end
  end

  def install
    bin.install "mise-completions-sync"
  end

  test do
    system bin/"mise-completions-sync", "--help"
  end
end
