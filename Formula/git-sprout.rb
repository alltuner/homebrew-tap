class GitSprout < Formula
  desc "Drop-in git worktree add that clones the tree instead of copying it"
  homepage "https://sprout.alltuner.com"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.2/git-sprout-aarch64-apple-darwin.tar.gz"
      sha256 "8cb9510332216d5bc60cfd1b7c436968eb2efd2360a8e4ebc61de6f03c8be11c"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.2/git-sprout-x86_64-apple-darwin.tar.gz"
      sha256 "0af76928de277fc9642546b2a84cf71f98fdabf43c5b5a0ea9b3f394e07390ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.2/git-sprout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c86f5fe455fb2fdd84d3dbbbeb1712d2dea2b044f20701309df08b33104fa89"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.2/git-sprout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e6a36f7af43a7bbbf53c3a12fb23ce97d8d5d434815481cd967fc4b82687eb2"
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
