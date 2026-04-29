class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.3/mneme-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "bb9bcd370ee411a5b783432910dbd84b4ab53d6e6b1e30012ae4f972b9adc9cc"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.3/mneme-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "3535545b63fe4b264dfc9b42c1639ac141272ebb01d6fec90e37bda7ee803cd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.3/mneme-0.2.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "abd582824e700caafdebc628033ae382f424f2cbd4b4c03b256c1ebcbb6c774b"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.3/mneme-0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be2affcbf4da852cb18eea11de1f526898289dbac3d6bbecddac0f9f28fddd14"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
