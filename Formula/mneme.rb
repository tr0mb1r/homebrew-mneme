class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.1/mneme-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "b34a3346f2c5d9b798c88d1dd3679e819829512fbc55dbc23c8cc4b07fd93210"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.1/mneme-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "1c2baa2eb8d6ca08603bc044217dfda9f7c759093649db75b56495758576235d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.1/mneme-0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d948553275226dbee19a6ff5a747ac4a4e2fdbcbaa28d76ac9f9d123fc6fae7e"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.1/mneme-0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f94eebcbef3122550fe64639676cb844f61dd3aabd92608e0985cc1d78b0a98"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
