class Apex < Formula
  desc "Unified Markdown processor supporting CommonMark, GFM, MultiMarkdown, and Kramdown"
  homepage "https://github.com/ttscoff/apex"
  url "https://github.com/ttscoff/apex.git",
    tag: "v0.1.1", revision: "HEAD"  # Update revision with actual commit hash for release
  head "https://github.com/ttscoff/apex.git"
  license "MIT"

  depends_on "cmake" => :build
  depends_on xcode: ["10.0", :build]

  def install
    mkdir "build" do
      system "cmake", "-S", "..", "-B", ".", "-DCMAKE_BUILD_TYPE=Release", "-DBUILD_FRAMEWORK=OFF"
      system "cmake", "--build", ".", "--target", "apex_cli"
      bin.install "apex"
    end
  end

  test do
    (testpath/"test.md").write("# Hello World\n")
    assert_match "<h1>Hello World</h1>", shell_output("#{bin}/apex test.md")
  end
end

