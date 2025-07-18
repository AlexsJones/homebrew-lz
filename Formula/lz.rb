class Lz < Formula
  desc "A blazingly fast CLI to list the 5 most recently accessed files in a directory tree"
  homepage "https://github.com/AlexsJones/lz"
  url "https://github.com/AlexsJones/lz/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "735ad52c7377313bc03712ca6dc77cc6a71d4ff276c8e7ac8f33cd7362121162"
  license "MIT"
  version "0.4.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "lz", shell_output("#{bin}/lz --help")
  end
end
