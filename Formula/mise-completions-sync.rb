class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.8/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "201175ff47d0dbd58fe7413cea173b27b2ee4ac08fab34af98b1f0087c43d2fb"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.8/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "ae40216a9b9063e42414f8fd9911c8e3117670c7dd83a48ae221da272cdb9afa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.8/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0007e670ba505e6eecc25fac1c59f8b1f37a5d98ab6741659b357bd7ecb18111"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.8/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "362c925fc65b180f52839da4b1f3748d395e86e87253483bd0751419044ff323"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
