class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.0.0/mneme-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "4055d90a2f314b93d06405842969de622aa668a4b0486f0b16fcec84b0aaeb1a"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.0.0/mneme-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "1ec52ad90e5cf2842286ee910c27c104f206a1c6c64e401a72f4e46dead3c865"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.0.0/mneme-1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4b2193a16bac1e8c45db3a736112a0bd68f4ba02e8cba61644ed0259012801c"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.0.0/mneme-1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2c0d2fb3503d13e59d835cd42ae7545084000144a3474fbf9b0a000c8c8446e"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
