class SudokuTui < Formula
  desc "Terminal-based Sudoku game built with Ratatui"
  homepage "https://github.com/Dalje-et/sudoku-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.1.0/sudoku-tui-aarch64-apple-darwin.tar.gz"
      sha256 "c0df1b42d3e3287e35d171a832b78f90c22ca50d0e5739e7c0e7d022bcb9b31a"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.1.0/sudoku-tui-x86_64-apple-darwin.tar.gz"
      sha256 "1f62343510cf0a1e48d13c143f6be1b69d4ee51e98d45fe6932d8dd932e9ac2a"
    end
  end

  def install
    bin.install "sudoku-tui"
  end

  test do
    assert_match "sudoku-tui", shell_output("#{bin}/sudoku-tui --version 2>&1", 1)
  end
end
