class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.1/mneme-1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4a29028bdfa092c80e7053653db7cb6e654d0807b81b709e81078c6208bb293b"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.1/mneme-1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "7d480bac31cfda586c30ab71c0db04cbb62a62d684b982ac36cafde3772127df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.1/mneme-1.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7d04d05f6552dc774a4ba12245e813a01d562f264551f82f58f93350bc82621"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.1/mneme-1.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a92339b1297b88582f6bb39daa87751261e3b9aeb137a6980948160d005b6a88"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
