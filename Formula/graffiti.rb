# Homebrew formula for graffiti
#   brew tap ttscoff/thelab
#   brew install graffiti

class Graffiti < Formula
  desc "Fortune-style client for graffiti.moe"
  homepage "https://graffiti.moe"
  url "https://github.com/ttscoff/graffiti/releases/download/v0.1.2/graffiti-0.1.2.tar.gz"
  sha256 "ab775772eb81d3dcd089c41e0bfdf60c8c4bfa3efb19cb23531bcf062aaa7a4c"
  license "MIT"
  version "0.1.2"

  depends_on "curl"

  def install
    bin.install "graffiti"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/graffiti help")
    assert_match "0.1.2", shell_output("#{bin}/graffiti --version")
  end
end
