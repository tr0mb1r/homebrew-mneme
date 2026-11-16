class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.6.0/mneme-1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "eab0d3c7a8934b683a6f61d0d59c08cb754d8a15bc74427c276895d39f913fe7"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.6.0/mneme-1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "0bcdbfd8edbac353732ba4bb07c34d5ef5bc37f50c642992c96aa975a4413599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.6.0/mneme-1.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20f44b366379b1e07cd421ba1966a6f52f2e596fab2e35731c6be00f2c94d1a6"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.6.0/mneme-1.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a95fc45c40067f0054746c220d7b5969bc96e5da5c4ae3ed33acf9d946dd8fcc"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
