class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.5/mneme-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "37a887fee6faaf79174df55f7d606db550d36d6a6a809dc77de5f58fb24fd76e"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.5/mneme-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "8c8ab43c5df80390ed9b7f8db5d4a4d5e126361fb15e9ace7f1433a40af2fef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.5/mneme-0.2.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9fc7e088f543e33abfb92bb72d0e8bf250287df8212f3b51c8c2aac3521a2a50"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.5/mneme-0.2.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15fd1f12d447e417adc0e8d147a168c48354a4cbe87790244751ceac5de94b71"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
