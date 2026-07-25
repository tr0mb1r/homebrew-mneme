class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.0/mneme-1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "30dc99cb49c3ce22126c991d2626e291840e19cb0a622460befff75e223976bd"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.0/mneme-1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "dda7efd5706e050ec088bfcf7ed81c2a96794de738e67371334827df1e1eb4fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.0/mneme-1.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c194dd43440d81d6e62c5fb93d59f423674879c14c19de0006c5a8bbdb58579"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.3.0/mneme-1.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff162a3b2fc64b272a7a295f3738ef06a69e4850987905d5f7e1ff4686f04aa1"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
