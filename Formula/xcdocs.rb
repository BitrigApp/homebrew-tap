class Xcdocs < Formula
  desc "Search local Apple developer documentation from the command line"
  homepage "https://github.com/BitrigApp/XCDocs"
  url "https://github.com/BitrigApp/XCDocs/releases/download/v0.2.0/xcdocs", using: :nounzip
  version "0.2.0"
  sha256 "8efaef0938f3fa5044e64f4d24fb050c8d1e9869a36b1fc25924e24ec90d71ab"
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
