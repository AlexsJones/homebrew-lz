class Lz < Formula
  desc "A blazingly fast CLI to list the 5 most recently accessed files in a directory tree"
  homepage "https://github.com/AlexsJones/lz"
  url "https://github.com/AlexsJones/lz/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "a81bd529d647a101654de08e496f4eb77e67be5650309c6732a41f2eea35f0ba"
  license "MIT"
  version "1.0.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lz", shell_output("#{bin}/lz --help")
  end
end
