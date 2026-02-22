class SudokuTui < Formula
  desc "Terminal-based Sudoku game with competitive multiplayer"
  homepage "https://github.com/Dalje-et/sudoku-tui"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.2/sudoku-tui-aarch64-apple-darwin.tar.gz"
      sha256 "65b9843ad2c1a465ff31a57c7c78684aa1488bb98e051616b1d90e69621041f2"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.2/sudoku-tui-x86_64-apple-darwin.tar.gz"
      sha256 "3c45678d2d8c1b5cab2dbcc42075d57ff8b4d2c8425b00ae5ff1f1d0141f72ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.2/sudoku-tui-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96bdf2e8b98bf55ee383c8b16eacc95da98f604877b1ef5550d24d2328af7bd4"
    else
      url "https://github.com/Dalje-et/sudoku-tui/releases/download/v0.2.2/sudoku-tui-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0872b487439e3152116b12715b844920949bce4b22f4668882a36953ce676114"
    end
  end

  def install
    bin.install "sudoku-tui"
  end

  test do
    assert_match "sudoku-tui", shell_output("#{bin}/sudoku-tui --version 2>&1", 1)
  end
end
