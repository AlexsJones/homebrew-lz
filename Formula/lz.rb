class Lz < Formula
  desc "A blazingly fast CLI to list the 5 most recently accessed files in a directory tree"
  homepage "https://github.com/AlexsJones/lz"
  url "https://github.com/AlexsJones/lz/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "72c801ca31b9b04bb6044b585d819faa252758a92be7b77d80ae77c54cebeb6e"
  license "MIT"
  version "1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lz", shell_output("#{bin}/lz --help")
  end
end
