class Mfa < Formula
  desc "Accurate, performant file size analysis tool for macOS"
  homepage "https://github.com/TimYagan/mac-file-analyzer"
  url "https://github.com/TimYagan/mac-file-analyzer/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "cd1bf300760db230d282685e8f7bd01c4612d0e088d80092f3d49ef7e8aa38f9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mfa --version")
  end
end
