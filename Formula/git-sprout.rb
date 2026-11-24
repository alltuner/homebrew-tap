class GitSprout < Formula
  desc "Drop-in git worktree add that clones the tree instead of copying it"
  homepage "https://sprout.alltuner.com"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.5/git-sprout-aarch64-apple-darwin.tar.gz"
      sha256 "33d7302d25d92b21dfaa720a0a2610c43bf244d00509079466525db363aa77e7"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.5/git-sprout-x86_64-apple-darwin.tar.gz"
      sha256 "1fbf1d8ba8e6d47e5573f82129d429db7c81834f22088836fb1ad57d474e9d25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.5/git-sprout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f69b97d877ecb1d0d7f4637776ff62268c394b1dce8f1972eea0ca07e25aad5f"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.5/git-sprout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "632269b437296b93f008a0738855105a870a974554e8588dde3baec53136c331"
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
