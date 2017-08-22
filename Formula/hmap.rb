class Hmap < Formula
  desc "Tool for working with Clang header map files"
  homepage "https://github.com/milend/hmap"
  url "https://github.com/milend/hmap/archive/1.0.2.tar.gz"
  sha256 "b1759705ad77405019034c0d44f6d9a3f43586da39f381fb701b5df5df957f08"

  head "https://github.com/milend/hmap.git"

  depends_on :xcode => ["8.3", :build]

  def install
    system "swift",
        "build",
        "-c", "release",
        "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/hmap"
  end

  test do
    system "#{bin}/hmap", "--version"
  end
end