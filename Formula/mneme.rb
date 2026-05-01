class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.4/mneme-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "f7a7fa61815b335149696ef01bde07978a6e74dfe0b844cee33123e99d491ccb"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.4/mneme-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "bf056dedf6672da885ecc26097e80bc19aa5cd5eedac2046e2e687d8017e3c79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.4/mneme-0.2.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00967d07082796dc752cea8254d56560d6328b2cf7a123a345062d2eb8ed3ed1"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.4/mneme-0.2.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c62eff9391aaa1b17f722a2ce4f67f5006e58af0636cac23f13d810e15c6218"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
