class Mfa < Formula
  desc "Accurate, performant file size analysis tool for macOS"
  homepage "https://github.com/TimYagan/mac-file-analyzer"
  url "https://github.com/TimYagan/mac-file-analyzer/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "de50bd1a79b37b7a33c1f1078af3b58c3548167b850dad5099bf4140c1af9264"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mfa --version")
  end
end
