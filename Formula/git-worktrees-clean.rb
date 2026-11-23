class GitWorktreesClean < Formula
  desc "Remove git worktrees whose work has reached the default branch"
  homepage "https://github.com/justinkek/git-worktrees-clean"
  url "https://github.com/justinkek/git-worktrees-clean/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "4aa9d2ea7747388f5ff6b08cc2ab718ddf66fb4fd7ed1ce3dee3acfa0ff88599"

  def install
    bin.install "git-worktrees-clean"
  end

  test do
    assert_match "usage: git worktrees-clean", shell_output("#{bin}/git-worktrees-clean --help")
  end
end
