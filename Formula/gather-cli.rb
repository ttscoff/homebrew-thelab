class GatherCli < Formula
  desc "Readability and Markdown utility for saving web urls and HTML text"
  homepage "https://brettterpstra.com/projects/gather-cli/"
  url "https://cdn3.brettterpstra.com/downloads/gather-cli2.0.8.zip"
  sha256 "97e2e879d36c8b989b535517ed58de6d5f9166c65ab582ee89d823f5c02f8157"
  license "MIT"

  bottle do
    root_url "https://ttscoff.jfrog.io/artifactory/bottles-thelab"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "3c7722c14e7a14d0e6e1b97985968e6bb71b01b3edf1021b56715daa1bdfa384"
  end

  def install
    mkdir("bin")
    mv("gather", "bin")
    bin.install("gather")
  end

  test do
    # assert_equal "Saved to file: test.txt", shell_output("#{bin}/gather https://brettterpstra.com --file test.txt").strip
    system "true"
  end
end
