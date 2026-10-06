class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.1/mneme-1.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "13df3ea639a8ec6da306d496dc0dabbc14d78d47823e62573dc8644f345e743e"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.1/mneme-1.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "9c69156f1fd7c092eb09d13dd9fe3c57fd760f8c02c41bc8bfb09dea6bbce9c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.1/mneme-1.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3498754d23faf0790ccfc1f43e71fdb99d9df3e7e73a9b70d60b1f37d569fca"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.4.1/mneme-1.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "186f3587fcbf2d35351be4d41cacf608208069be293575345ad253bf6c4c4e38"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
