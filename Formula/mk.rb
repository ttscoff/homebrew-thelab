class Mk < Formula
  desc "Marked command line utility"
  homepage "https://markedapp.com"
  url "https://github.com/ttscoff/mk/releases/download/v3.0.35/mk-3.0.35-macos-universal.tar.gz"
  sha256 "51b960ce46db0d6c4772dffc3d9b8c3b3d4efff6ebe02840b67f8ef286b4f590"
  license "Proprietary"

  depends_on :macos

  def install
    bin.install "mk"
  end

  test do
    assert_match "mk version", shell_output("#{bin}/mk --version")
  end
end
