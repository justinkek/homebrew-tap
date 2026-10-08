class GitWorktreesClean < Formula
  desc "Remove git worktrees whose work has reached the default branch"
  homepage "https://github.com/justinkek/git-worktrees-clean"
  url "https://github.com/justinkek/git-worktrees-clean/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c5fb0d122d6b1bbccb5e636af985cf814c34b3c171202d6cf7f7fd6495c0b056"

  def install
    bin.install "git-worktrees-clean"
  end

  test do
    assert_match "usage: git worktrees-clean", shell_output("#{bin}/git-worktrees-clean --help")
  end
end
