class SudokuTui < Formula
  desc "Terminal-based Sudoku game with competitive multiplayer"
  homepage "https://github.com/Dalje-et/sudoku-tui"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.1/sudoku-tui-aarch64-apple-darwin.tar.gz"
      sha256 "33c8f6519828051449511c2d58f1d402f60fd45d067957c123c2ef0cc94212f4"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.1/sudoku-tui-x86_64-apple-darwin.tar.gz"
      sha256 "23c2cb58d1deaac078795250edb4c91d713b01dcb099438ae44a2227a76e6692"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.1/sudoku-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44dd2e5a5602cb383a39c9ffb0bf6556505947c087e058e1909741ea5e971446"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.1/sudoku-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "062ad04808ba5d5980336760023c05ba3a7752a79ace8408723459cf1d5de32e"
    end
  end

  def install
    bin.install "sudoku-tui"
  end

  test do
    assert_match "sudoku-tui", shell_output("#{bin}/sudoku-tui --version 2>&1", 1)
  end
end
