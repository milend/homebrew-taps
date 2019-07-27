class Hmap < Formula
  desc "Tool for working with Clang header map files"
  homepage "https://github.com/milend/hmap"
  url "https://github.com/milend/hmap/archive/1.0.4.tar.gz"
  sha256 "87b979b4cd6a5332e5a83b6bde16f2bbb2a59e54554e376f930649784275103a"

  head "https://github.com/milend/hmap.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "swift",
        "build", "--disable-sandbox",
        "-c", "release"
    bin.install ".build/release/hmap"
  end

  test do
    system "#{bin}/hmap", "--version"
  end
end
