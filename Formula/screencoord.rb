# Homebrew formula for screencoord
#   brew tap ttscoff/thelab
#   brew install screencoord

class Screencoord < Formula
  desc "Select a screen region and print coordinates for screencapture or AppleScript"
  homepage "https://github.com/ttscoff/screencoord"
  url "https://github.com/ttscoff/screencoord/releases/download/v0.1.0/screencoord-0.1.0-macos-universal.tar.gz"
  sha256 "da027ba4dd1866be59cd24e09d2df03d5684a5744507ad6448bf2bb12e0e78ec"
  license "MIT"

  depends_on :macos

  def install
    bin.install "screencoord"
  end

  test do
    assert_match "screencoord", shell_output("#{bin}/screencoord --help")
  end
end
