# Homebrew formula for screencoord
#   brew tap ttscoff/thelab
#   brew install screencoord

class Screencoord < Formula
  desc "Select a screen region and print coordinates for screencapture or AppleScript"
  homepage "https://github.com/ttscoff/screencoord"
  url "https://github.com/ttscoff/screencoord/releases/download/v0.2.0/screencoord-0.2.0-macos-universal.tar.gz"
  sha256 "04fc411743ae9e4911b51fdd3b16fc880a72141af00398f2400b666ee2353067"
  license "MIT"

  depends_on :macos

  def install
    bin.install "screencoord"
  end

  test do
    assert_match "screencoord", shell_output("#{bin}/screencoord --help")
  end
end
