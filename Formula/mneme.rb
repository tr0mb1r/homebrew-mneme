class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.0/mneme-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8738e4d39abcef1a64fe7bcd676a99424d0134547f5dd6b5406887f99fe75226"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.0/mneme-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f776cfa49c941b725cedf3f4aa87d89f680a5aa62fa1601f11ba0b952199cdb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.0/mneme-1.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4ffc32814847bdaa9f94a8f343b8ede42029a82a92dcb5d049c062c5b6ab57e"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.0/mneme-1.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c47586388cf50ad314d5332002f8abfcd0e11037e9c789bcad59d54cc00dbac9"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
