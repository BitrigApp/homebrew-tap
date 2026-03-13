class Xcdocs < Formula
  desc "Search local Apple developer documentation from the command line"
  homepage "https://github.com/BitrigApp/XCDocs"
  url "https://github.com/BitrigApp/XCDocs/releases/download/v0.1.0/xcdocs", using: :nounzip
  version "0.1.0"
  sha256 "525da618e61147eeb128bb9be974043b8b265da1f6347130f4cba1476f8fd4c1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "xcdocs"
    (bin/"xcdocs").chmod 0555
  end

  test do
    output = shell_output("#{bin}/xcdocs version")
    assert_match version.to_s, output
  end
end
