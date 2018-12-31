class Hmap < Formula
  desc "Tool for working with Clang header map files"
  homepage "https://github.com/milend/hmap"
  url "https://github.com/milend/hmap/archive/1.0.3.tar.gz"
  sha256 "979dcf6a71c3760896c3de9e2058c179b7f5f8907fbf620c5198ecac237bca1d"

  head "https://github.com/milend/hmap.git"

  depends_on :xcode => ["10.0", :build]

  def install
    system "swift",
        "build", "--disable-sandbox",
        "-c", "release",
        "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/hmap"
  end

  test do
    system "#{bin}/hmap", "--version"
  end
end
