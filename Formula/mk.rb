class Mk < Formula
  desc "Marked command line utility"
  homepage "https://markedapp.com"
  version "3.0.13"
  license "Proprietary"

  on_macos do
    url "https://github.com/ttscoff/mk/releases/download/v#{version}/mk-#{version}-macos-universal.tar.gz"
    sha256 "160e55dbfd472003b609a92befb6ff3bd0d7eb653631cc6654bdb10184a4a55b"
  end

  def install
    bin.install "mk"
  end

  test do
    assert_match "mk version", shell_output("#{bin}/mk --version")
  end
end
