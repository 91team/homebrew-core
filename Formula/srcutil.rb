class Srcutil < Formula
  desc "Generate source code listings and archives"
  homepage "https://github.com/91team/srcutil"
  url "https://github.com/91team/srcutil/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "14fc34048c5c09a861216cc3b5de5f8d94577461d5e29ac9411b281c414a2f8a"
  license "MIT"

  depends_on "go" => :build
  depends_on "make" => :build
  depends_on "git" => :optional

  def install
    system "make", "build"
    bin.install "srcutil"
  end
end