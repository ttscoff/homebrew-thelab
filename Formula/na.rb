class Na < Formula
  desc "TaskPaper next-action CLI"
  homepage "https://github.com/ttscoff/na_rust"
  license "MIT"
  version "1.0.5"

  on_macos do
    url "https://github.com/ttscoff/na_rust/releases/download/v1.0.5/na-macos-universal.tar.gz"
    sha256 "b68aade2793e2aab1c750087dacaedf3dabe57c07a849bf32cfab14f3d66f380"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ttscoff/na_rust/releases/download/v1.0.5/na-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f17e4f666315b45303690f34675c56342e6f68051b29f64394d352faeefa2f34"
    else
      url "https://github.com/ttscoff/na_rust/releases/download/v1.0.5/na-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7fd94e9e2a23233b4de5a499cca5080c65109f6326628586fe67c435f3bd39f"
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
