class GatherCli < Formula
  desc "Readability and Markdown utility for saving web urls and HTML text"
  homepage "https://brettterpstra.com/projects/gather-cli/"
  url "https://github.com/ttscoff/gather-cli.git",
    tag: "2.1.4", revision: "ede1a94c0157e3f0e5c36ecbfd2a2307c4b22ca4"
  head "https://github.com/ttscoff/gather-cli.git"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/gather", "https://brettterpstra.com/2022/08/30/popclip-webmarkdown-fix-and-other-codesigning-adventures/"
  end
end
