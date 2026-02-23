class SudokuTui < Formula
  desc "Terminal-based Sudoku game with competitive multiplayer"
  homepage "https://github.com/Dalje-et/sudoku-tui"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-aarch64-apple-darwin.tar.gz"
      sha256 "f4b3171dc0e23044c08ba261b1f70ee01c8043c8b77d9dd1aa7123c76112ed8b"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-x86_64-apple-darwin.tar.gz"
      sha256 "599d28125348bccae161d432e9cf0a0dfd757ce14efdf7dd2c020500593449ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf484710e4d0a649bf2e8dbf5b7c232855b2798c22fad61a6c6bd8e896b81add"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.3/sudoku-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89996cf186db60bc06eff33338a412e0b379a8623c1765c04a0c403807ae495e"
    end
  end

  def install
    bin.install "sudoku-tui"
  end

  test do
    assert_match "sudoku-tui", shell_output("#{bin}/sudoku-tui --version 2>&1", 1)
  end
end
