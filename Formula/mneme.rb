class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.2/mneme-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "7c1967b3fecd9f6b0cd714a0b9ff9a2befa13ba1ff88b40a852452faf10fa5f7"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.2/mneme-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "01bed71eb871cbd4b102d3109d3f49d8f3396b06cdae5787359fa3982e474396"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.2/mneme-0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "385871630eb96c4c475825a18e3301813b38aed656dbd8aca021ec4b317d45fa"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.2/mneme-0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b24f9d520c21db9f05109c321779b8e0e90363d9158e79ea430d20a8e3ea2b33"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
