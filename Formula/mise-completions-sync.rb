class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.21/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "d289c8caac0a88cea872374c95753e6d055a8aa0beea3034b9d70ca96f19be0d"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.21/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "3eeff0886d10bb8cf29320dfb688937cb9a93772f84e7fb076b02bb4bfa8801a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.21/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b596abf86fdbd3aaf6c6e941101297a1a7704583bc5ca319fe29d0be3ea65a09"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.21/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4466ee850b832270f0779ef79ac1a77da211e8d0a14812af84184a29da41ae94"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
