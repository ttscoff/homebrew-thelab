# Homebrew formula for graffiti
#   brew tap ttscoff/thelab
#   brew install graffiti

class Graffiti < Formula
  desc "Fortune-style client for graffiti.moe"
  homepage "https://graffiti.moe"
  url "https://github.com/ttscoff/graffiti/releases/download/v0.1.4/graffiti-0.1.4.tar.gz"
  sha256 "b0ea0e54f36736e993e7bf26e2f3cc595b200d4c2d2999f7011d1b9789c0ccf9"
  license "MIT"
  version "0.1.4"

  depends_on "curl"

  def install
    bin.install "graffiti"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/graffiti help")
    assert_match "0.1.4", shell_output("#{bin}/graffiti --version")
  end
end
