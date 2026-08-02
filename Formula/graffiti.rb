# Homebrew formula for graffiti
#   brew tap ttscoff/thelab
#   brew install graffiti

class Graffiti < Formula
  desc "Fortune-style client for graffiti.moe"
  homepage "https://graffiti.moe"
  url "https://github.com/ttscoff/graffiti/releases/download/v0.1.1/graffiti-0.1.1.tar.gz"
  sha256 "8d4dddbeb56faa7a77ab4a1ca0933ab1c978b8263c61853b620ea655f9c34c24"
  license "MIT"
  version "0.1.1"

  depends_on "curl"

  def install
    bin.install "graffiti"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/graffiti help")
    assert_match "0.1.1", shell_output("#{bin}/graffiti --version")
  end
end
