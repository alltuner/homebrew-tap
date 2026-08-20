class GitSprout < Formula
  desc "Drop-in git worktree add that clones the tree instead of copying it"
  homepage "https://sprout.alltuner.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-aarch64-apple-darwin.tar.gz"
      sha256 "4edff14c1c5f75b0001842eb88276f94ac463bfaef725e941fc140d828fb4919"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-x86_64-apple-darwin.tar.gz"
      sha256 "7b3efb596b7b14cf54fcc6eac6e6db456083e1fb5f5e7b01b5395c2c13b247e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d77ada14438ccff1d5edc489b5a7d6da4fce9c259b6273eabddd44d3290fc691"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07403a32f4e224d6186080f1b221b430ddbe0862c584daf0b4e96d98c09c2f9e"
    end
  end

  def install
    bin.install "git-sprout"
    bin.install "git-worktree-fast"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-sprout --version")
  end
end
