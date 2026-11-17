class GitSprout < Formula
  desc "Drop-in git worktree add that clones the tree instead of copying it"
  homepage "https://sprout.alltuner.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.3/git-sprout-aarch64-apple-darwin.tar.gz"
      sha256 "57fce0e21d7eb35788b208f06efc43dfbdb50f601e927142a864b1815ea2e9a8"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.3/git-sprout-x86_64-apple-darwin.tar.gz"
      sha256 "9b6719cb343e9ff4afcaccfe9366ad93eb97a2adff2c1b6e12b496866d6a086e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.3/git-sprout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "851a2145019be80df2044c55ad710021b95389395c49dd36488717566a6c3c2f"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.3/git-sprout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b404b4a55de2e1aa593c7469608446587e732161ebdd7081517d8825d433bdf7"
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
