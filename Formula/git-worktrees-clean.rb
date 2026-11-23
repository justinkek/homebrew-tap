class GitWorktreesClean < Formula
  desc "Remove git worktrees whose work has reached the default branch"
  homepage "https://github.com/justinkek/git-worktrees-clean"
  url "https://github.com/justinkek/git-worktrees-clean/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "f01165560bb485f482255877f9f74d729c481775e5f7cd731e0df740aa89d0a8"

  def install
    bin.install "git-worktrees-clean"
  end

  test do
    assert_match "usage: git worktrees-clean", shell_output("#{bin}/git-worktrees-clean --help")
  end
end
