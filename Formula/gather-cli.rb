class GatherCli < Formula
  desc "Readability and Markdown utility for saving web urls and HTML text"
  homepage "https://brettterpstra.com/projects/gather-cli/"
  url "https://github.com/ttscoff/gather-cli.git",
    tag: "2.0.47", revision: "d7be191031cfe5aa54891a2c74359fb8c2536b86"
  head "https://github.com/ttscoff/gather-cli.git"

  depends_on xcode: ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/gather", "https://brettterpstra.com/2022/08/30/popclip-webmarkdown-fix-and-other-codesigning-adventures/"
  end
end
