class Quickfind < Formula
  desc "A simple and fast tool for finding stuff"
  homepage "https://github.com/akojo/quickfind"
  url "https://github.com/akojo/quickfind/archive/v1.0.tar.gz"
  sha256 "05c652688d0945fa74bcf98de8800bdc248d4d0b452e8c3161718f7c076ae6d1"

  def install
    system "make", "prefix=#{prefix}"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    (testpath/"testFile.txt").write("testfile")
    system bin/"qfind", "-f"
  end
end
