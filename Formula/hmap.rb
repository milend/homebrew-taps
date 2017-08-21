class Hmap < Formula
  desc "Tool for working with Clang header map files"
  homepage "https://github.com/milend/hmap"
  url "https://github.com/milend/hmap/archive/1.0.1.tar.gz"
  sha256 "1a72c4d3f66d2e15fe78d3e252fa8a0b18d2f86c20f4e48383d8f1698ae98c99"

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