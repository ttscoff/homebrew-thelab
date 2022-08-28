class GatherCli < Formula
  desc "Readability and Markdown utility for saving web urls and HTML text"
  homepage "https://brettterpstra.com/projects/gather-cli/"
  url "https://cdn3.brettterpstra.com/downloads/gather-cli2.0.8.zip"
  sha256 "97e2e879d36c8b989b535517ed58de6d5f9166c65ab582ee89d823f5c02f8157"
  license "MIT"

  bottle do
    root_url "https://ttscoff.jfrog.io/artifactory/bottles-thelab"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "bc11ef96ec4c3060848254b6423b8e19ceb18165d46645cc5baf57e548404c08"
  end

  def install
    bin.install("gather")
  end

  test do
    system "gather", "https://brettterpstra.com", "--file", "test.txt"
    assert_predicate "test.txt", :exists?
  end
end
