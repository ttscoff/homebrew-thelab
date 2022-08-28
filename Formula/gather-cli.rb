# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GatherCli < Formula
  desc "Readability and Markdown utility for saving web urls and HTML text"
  homepage "https://brettterpstra.com/projects/gather-cli/"
  url "https://cdn3.brettterpstra.com/downloads/gather-cli2.0.8.zip"
  sha256 "97e2e879d36c8b989b535517ed58de6d5f9166c65ab582ee89d823f5c02f8157"
  license "MIT"


  def install
    FileUtils.mkdir("bin")
    FileUtils.cp("gather", "bin")
    bin.install("gather")
  end

  test do
    system "gather", "https://brettterpstra.com", "--file", "test.txt"
    assert_predicate testpath/"test.txt", :exist?
  end
end
