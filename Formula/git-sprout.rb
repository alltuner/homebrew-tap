class GitSprout < Formula
  desc "Drop-in git worktree add that clones the tree instead of copying it"
  homepage "https://sprout.alltuner.com"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.1/git-sprout-aarch64-apple-darwin.tar.gz"
      sha256 "c5ca74a162733f9dbafa23ce59e046366b3d4d77f40bd5f85cfe2f8f7b362257"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.1/git-sprout-x86_64-apple-darwin.tar.gz"
      sha256 "bcb69f18d2750514e6e83c05a6e9c115a96cadb30fc7f4efcc2857b422b34255"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.1/git-sprout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66a86d31255f32808d91f60c8a9dae3c167085499525bfca861f9371fd37832f"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.1/git-sprout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df80327b4666dff9bde8f441cc0dd8b508703da52f4f396c85409522364c6a99"
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
