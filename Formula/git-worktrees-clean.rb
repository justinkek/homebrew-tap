class GitWorktreesClean < Formula
  desc "Remove git worktrees whose work has reached the default branch"
  homepage "https://github.com/justinkek/git-worktrees-clean"
  url "https://github.com/justinkek/git-worktrees-clean/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "7ff337a0bcb340f22700fc75b809b431dcc9c630e02516465037a1a4652be0f1"

  def install
    bin.install "git-worktrees-clean"
  end

  test do
    assert_match "usage: git worktrees-clean", shell_output("#{bin}/git-worktrees-clean --help")
  end
end
