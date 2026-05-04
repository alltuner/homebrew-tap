class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.6/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "30908a972d829afd5ca87ebeccce2502890c92a2c7917562793311f3ad7f8d8b"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.6/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "b378e28e840e08d51fff3ae734ecafa1782b99b4657911daa5d2868d1b20eb2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.6/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8366ad74f500f4117a5a6421cac1705304eb3b6a89abf3dfde08202a0a0c8aa1"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.6/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7aa0c3caf01b9275a0ac86462437669f0f92cad78052d5d81c0e0954030838c8"
    end
  end

  def install
    bin.install "mise-completions-sync"
  end

  test do
    system bin/"mise-completions-sync", "--help"
  end
end
