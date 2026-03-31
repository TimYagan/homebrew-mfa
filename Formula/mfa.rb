class Mfa < Formula
  desc "Accurate, performant file size analysis tool for macOS"
  homepage "https://github.com/TimYagan/mac-file-analyzer"
  url "https://github.com/TimYagan/mac-file-analyzer/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "00fd4e08d5cb7307f3a55c6eb298ad9f18d2fe9c4fd40cc35278ec668e8ae254"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mfa --version")
  end
end
