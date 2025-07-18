class Lz < Formula
  desc "A blazingly fast CLI to list the 5 most recently accessed files in a directory tree"
  homepage "https://github.com/AlexsJones/lz"
  url "https://github.com/AlexsJones/lz/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "3958c0a7a7e3b92bee5391ee0129e35b784f3fd5976cb5155f2ebbc640f70296"
  license "MIT"
  version "0.9.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lz", shell_output("#{bin}/lz --help")
  end
end
