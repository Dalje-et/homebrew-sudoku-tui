class SudokuTui < Formula
  desc "Terminal-based Sudoku game with competitive multiplayer"
  homepage "https://github.com/Dalje-et/sudoku-tui"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.0/sudoku-tui-aarch64-apple-darwin.tar.gz"
      sha256 "691b0c1be541c3fea55818bf75f5d01efc8a4ed3f3b655ea056443ecda62357c"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.0/sudoku-tui-x86_64-apple-darwin.tar.gz"
      sha256 "efb8e5102265a101b5aa02e866ace0451aead811606c9c52c98a554ae5cec9ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.0/sudoku-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63cdb9eaadade60f7733c980cedfd3a8d1e58fe72840815cb175eba85f4ee62f"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.0/sudoku-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d7f06d92ceeab08f2903df33b90ab84434081d42e7a1a89ec8df9dced9b283d"
    end
  end

  def install
    bin.install "sudoku-tui"
  end

  test do
    assert_match "sudoku-tui", shell_output("#{bin}/sudoku-tui --version 2>&1", 1)
  end
end
