# Homebrew formula for graffiti
#   brew tap ttscoff/thelab
#   brew install graffiti

class Graffiti < Formula
  desc "Fortune-style client for graffiti.moe"
  homepage "https://graffiti.moe"
  url "https://github.com/ttscoff/graffiti/releases/download/v0.1.0/graffiti-0.1.0.tar.gz"
  sha256 "095dafc118e3b6bbb37a6c620624cb368a76f475f4a7fa2f833a5463257b747a"
  license "MIT"
  version "0.1.0"

  depends_on "curl"

  def install
    bin.install "graffiti"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/graffiti help")
    assert_match "0.1.0", shell_output("#{bin}/graffiti --version")
  end
end
