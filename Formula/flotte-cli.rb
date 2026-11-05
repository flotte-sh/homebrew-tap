class FlotteCli < Formula
  desc "Manage SSH access with short-lived certificates"
  homepage "https://docs.flotte.sh"
  version "0.0.2"
  license :cannot_represent # MIT with Commons Clause

  on_macos do
    on_arm do
      url "https://github.com/flotte-sh/cli/releases/download/v0.0.2/flotte_darwin_arm64.tar.gz"
      sha256 "4fdcd2b140ae47d4c37d90aa915e68a98aee3051e8e1fb8ea6aa2f63d9cd884e"
    end
    on_intel do
      url "https://github.com/flotte-sh/cli/releases/download/v0.0.2/flotte_darwin_amd64.tar.gz"
      sha256 "756b380b160efb8025ad63580685505d76ed16b6f4562ec7adbaedf0ef94a7e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/flotte-sh/cli/releases/download/v0.0.2/flotte_linux_arm64.tar.gz"
      sha256 "39375a81165801e7856886246832ff331731c5afaf95ec3ecf3a1ed45fc1dcf7"
    end
    on_intel do
      url "https://github.com/flotte-sh/cli/releases/download/v0.0.2/flotte_linux_amd64.tar.gz"
      sha256 "4634c8912b81ecb983d54aa45a06a46ca85d1fc82ea9f50e2a5d2d0ce5694dd4"
    end
  end

  def install
    bin.install "flotte"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/flotte version")
  end
end
