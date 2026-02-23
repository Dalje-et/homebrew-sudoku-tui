class SudokuTui < Formula
  desc "Terminal-based Sudoku game with competitive multiplayer"
  homepage "https://github.com/Dalje-et/sudoku-tui"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-aarch64-apple-darwin.tar.gz"
      sha256 "4c9dbc8ea0c7a89267f8c1f2c46e768345e969a52c2feaae8a5e276ef8f13d08"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-x86_64-apple-darwin.tar.gz"
      sha256 "e786dfea6c8e215a579c76d6915da9eec505f3f6e4474456ff21a45471fbdb83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35af652744b8608805fc6462f9700ab618d923c04846485d1f9a4fbe948c7a25"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a20335adc386589e8d6e89ecabb803a429f9e8508c48af491917d266b737d9e"
    end
  end

  def install
    bin.install "sudoku-tui"
  end

  test do
    assert_match "sudoku-tui", shell_output("#{bin}/sudoku-tui --version 2>&1", 1)
  end
end
