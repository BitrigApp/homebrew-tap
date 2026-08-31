cask "bitrig" do
  version :latest
  sha256 :no_check

  url "https://app.bitrig.com/download/latest"
  name "Bitrig"
  desc "Build and ship native Swift apps with AI"
  homepage "https://bitrig.com/"

  depends_on macos: :sequoia

  app "Bitrig.app"
end
