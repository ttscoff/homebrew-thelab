class GatherCli < Formula
  desc "Readability and Markdown utility for saving web urls and HTML text"
  homepage "https://brettterpstra.com/projects/gather-cli/"
  url "https://github.com/ttscoff/gather-cli/archive/refs/tags/2.0.24.tar.gz"
  sha256 "60b07f37ecd1c99ef658a7f4a9b6f0831a822ffee65e3d6164b824c9c2c45e17"
  license "MIT"

  depends_on "swift" => :build

  def install
    system "xcrun", "swift", "build", "-c", "release"
    bin.install ".build/apple/Products/Release/gather"
  end

  test do
    system "false"
  end
end
