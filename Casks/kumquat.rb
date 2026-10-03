cask "kumquat" do
  version "1.1.1"
  sha256 "6cf35381c31a6d902f9bf0fed714b91266939415f3b0485269e4caacb6945692"

  url "https://github.com/kelvin715/Kumquat/releases/download/v#{version}/Kumquat.dmg"
  name "Kumquat"
  desc "Convert files by holding Shift while dragging them"
  homepage "https://github.com/kelvin715/Kumquat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Kumquat.app"

  uninstall quit: "io.github.kelvin715.Kumquat"

  zap trash: [
    "~/Library/Application Support/Kumquat",
    "~/Library/Preferences/io.github.kelvin715.Kumquat.plist",
  ]
end
