# Homebrew formula for screencoord
#   brew tap ttscoff/thelab
#   brew install screencoord

class Screencoord < Formula
  desc "Select a screen region and print coordinates for screencapture or AppleScript"
  homepage "https://github.com/ttscoff/screencoord"
  url "https://github.com/ttscoff/screencoord/releases/download/v0.1.1/screencoord-0.1.1-macos-universal.tar.gz"
  sha256 "004bffc4ef644af2c24133829c431c242168e01b0c42a2af2692ec618d05dee2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "screencoord"
  end

  test do
    assert_match "screencoord", shell_output("#{bin}/screencoord --help")
  end
end
