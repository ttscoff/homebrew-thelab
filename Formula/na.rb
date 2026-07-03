class Na < Formula
  desc "TaskPaper next-action CLI"
  homepage "https://github.com/ttscoff/na_rust"
  license "MIT"
  version "1.0.2"

  on_macos do
    url "https://github.com/ttscoff/na_rust/releases/download/v1.0.2/na-macos-universal.tar.gz"
    sha256 "9928bfcec6a5727f2419e4f443cf75a0f3c5ae5d1e6a9aa34887cd14fcdff95b"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ttscoff/na_rust/releases/download/v1.0.2/na-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54213663482a50edae5a2034d515a434f8c3ec03980bae6048a4b5eb4f2b33a6"
    else
      url "https://github.com/ttscoff/na_rust/releases/download/v1.0.2/na-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8baa859e4ddb8b85a927fcdd0068e1d7f1c4d8838e9d302f2d8b25ce8913ddc5"
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
