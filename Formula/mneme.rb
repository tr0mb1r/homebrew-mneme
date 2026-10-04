class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.0/mneme-1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "41fa8aea9c5139d4abdbeaaed51e2d5c4261d0108ea3d07c38eaeff203519a38"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.0/mneme-1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "af999467f763114198f665584554b2770f8371fb1f27a9b69f51f27c3a692b55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.0/mneme-1.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "87327a8f02f3fa8651ab729f18fb572a7feec4e3067779bc4c895ff13c3ce5bc"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.0/mneme-1.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f0e6df06d0cd663ff18eb87a18de04c0344ce2b196413b468c3753842e3d913"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
