class GitSprout < Formula
  desc "Drop-in git worktree add that clones the tree instead of copying it"
  homepage "https://sprout.alltuner.com"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.4/git-sprout-aarch64-apple-darwin.tar.gz"
      sha256 "ccf12833546b5f070359f7ae7eeef07861cf41524f02ff5d7c5f69c4c932b307"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.4/git-sprout-x86_64-apple-darwin.tar.gz"
      sha256 "34a18822ea3e32b20d2eb315ca24983571bde1165a5f2f1574bc3761ecbe2dc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.4/git-sprout-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d962963d93ad1ed217675ef2bf69f450c3dade51ccd864a2a29994a9347fd32"
    else
      url "https://github.com/alltuner/git-sprout/releases/download/git-sprout-v0.1.4/git-sprout-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b137affba07cc34687cbfaef82bb3ba18cb0d0963fe67a5f2ddda1ba2f35e619"
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
