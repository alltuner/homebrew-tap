class GitSprout < Formula
  desc "Drop-in git worktree add that clones the tree instead of copying it"
  homepage "https://sprout.alltuner.com"
  version "git-sprout-v0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-aarch64-apple-darwin.tar.gz"
      sha256 "eb19d90392c2c94847a0bfff946b35948dcd64a7ac366f4b48bbb6852b02f6fa"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-x86_64-apple-darwin.tar.gz"
      sha256 "49d9671d956a78aeee31fc69e549681611aa79c4acc2e3a682b0b72287ebd8e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "405ec4bc655b8c404a64729d01d8b598225726a53ee278de6fb9402b580f4df2"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.0/git-sprout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f62e6dfd5c3e37d1fe8517d693e1e578fd85f3994421b5a99bfa48215e0cf946"
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
