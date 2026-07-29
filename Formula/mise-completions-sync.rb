class MiseCompletionsSync < Formula
  desc "Sync shell completions for tools managed by mise"
  homepage "https://github.com/alltuner/mise-completions-sync"
  version "0.5.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.13/mise-completions-sync-aarch64-apple-darwin.tar.gz"
      sha256 "1f8dc37de5137a0b130d769f77463e15011c6e9d60f4ccbf06f8373d1a6bf12a"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.13/mise-completions-sync-x86_64-apple-darwin.tar.gz"
      sha256 "391255477d70636329cad4811512fc76a8b05414a0530fcebf65710433d25e3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.13/mise-completions-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e873a3c34dc8b8fc694d929d8455d43f2c1999b6c7ee2097f446fc1ea02d8944"
    else
      url "https://github.com/alltuner/mise-completions-sync/releases/download/v0.5.13/mise-completions-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d0ffdfcc99c5a80b142ee40713d5380d19c95627af56cbd388ce939e89a949b"
    end
  end

  def install
    bin.install "misecompsync"
  end

  test do
    system bin/"misecompsync", "--help"
  end
end
