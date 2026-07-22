class Na < Formula
  desc "TaskPaper next-action CLI"
  homepage "https://github.com/ttscoff/na_rust"
  license "MIT"
  version "1.0.4"

  on_macos do
    url "https://github.com/ttscoff/na_rust/releases/download/v1.0.4/na-macos-universal.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ttscoff/na_rust/releases/download/v1.0.4/na-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/ttscoff/na_rust/releases/download/v1.0.4/na-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "na"
  end

  test do
    output = shell_output("#{bin}/na --help")
    assert_match "na", output
  end
end
