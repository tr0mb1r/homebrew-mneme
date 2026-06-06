class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.1/mneme-1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c6cc78f94352bd5d9d99a03e98f88bdf4acb5f6587aec58741fadd7033ed912"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.1/mneme-1.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "6abe809b2b8d93cdc0b255d183c088fd32415857c00d5379a82d4e7330f77f6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.1/mneme-1.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "268916937426e54dd78e03c15358543edc387345f259e2ca4867ac8b6d333513"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.1/mneme-1.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48293fb4903a347823980864ef6693e980433df47b5d375edcf365d5946b6fd7"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
