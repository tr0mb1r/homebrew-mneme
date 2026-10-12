class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.5.0/mneme-1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "0dcc8668439995d854f5a0782e251e3f65643c75403eb000a138bf54226cfec7"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.5.0/mneme-1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "985f8aca495e61d1dcfa319466d3a4f22fc723215c1d43d57817cc13d0949d5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.5.0/mneme-1.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea5859865506c0f9babfb8321eb646bdee3d77897e512c70fa287f6021663fee"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.5.0/mneme-1.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "adda7ae0db7b27a34995c4d69796b84d8f479346c385b42fae456f9d7d0b6dd7"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
