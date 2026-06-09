class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.10/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "e188f196775edbfd9a46720d43f624bdf41fbfc94f9b124ec60dc7c56b17eb52"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.10/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "691807a2eb1bd949df2762b468cd1b8ceb4f67a7fd3d39bcdd22d58e61390f10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.10/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aff6fe3833286f10dac869d3222bef1ae7cc517f7bd3b23551c39c2ab51c394b"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.10/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "760bf76b6d17840e3d803c41afe0be5f0ca9250b9ab202f7ff4aae9f26e90a94"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
