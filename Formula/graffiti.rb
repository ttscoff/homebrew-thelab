# Homebrew formula for graffiti
#   brew tap ttscoff/thelab
#   brew install graffiti

class Graffiti < Formula
  desc "Fortune-style client for graffiti.moe"
  homepage "https://graffiti.moe"
  url "https://github.com/ttscoff/graffiti/releases/download/v0.1.5/graffiti-0.1.5.tar.gz"
  sha256 "161b23d206d3cf51b28988f97617896848f9b36ab4d5f86574b60df41bd2a0f1"
  license "MIT"
  version "0.1.5"

  depends_on "curl"

  def install
    bin.install "graffiti"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/graffiti help")
    assert_match "0.1.5", shell_output("#{bin}/graffiti --version")
  end
end
