class Mk < Formula
  desc "Marked command line utility"
  homepage "https://markedapp.com"
  version "3.0.34"
  license "Proprietary"

  on_macos do
    url "https://github.com/ttscoff/mk/releases/download/v#{version}/mk-#{version}-macos-universal.tar.gz"
    sha256 "e681b42452b1de578bddd03ed314fb5d885d7b4ad1baf015938931991bd4aae9"
  end

  def install
    bin.install "mk"
  end

  test do
    assert_match "mk version", shell_output("#{bin}/mk --version")
  end
end
