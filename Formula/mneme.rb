class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.6/mneme-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "69145ec85a7821f86754fc10f4c23ca0b8b01e0cc17507f04732e2024c2d4198"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.6/mneme-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "bf4d8c2732ee0dc463dfba2ca80e701ac25f27633adc9e43824d08542844d78f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.6/mneme-0.2.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3d000350d2e77f3d23e41127bc3312b6d2bb1082b0b526727c26ae3667a01c8a"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v0.2.6/mneme-0.2.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c83d4f84952e41a9e863c8ba08cfa24f3cfe5f04006c3045d20b13ad1adb2430"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
