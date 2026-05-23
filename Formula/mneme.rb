class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.1.1/mneme-1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "84defc7862f6122803a1cacc3418b846a70ca1979ef03e264756bc7939cd22ed"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.1.1/mneme-1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "c75c96ba598f2af41bf924a87796557d65f3ce8ac780af8a290acc553ec5b24f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.1.1/mneme-1.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86eab2bdbe30f4d362e555e78f41b91285d51aeb537708185ea793790a682f78"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.1.1/mneme-1.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec22f463e4c153a52656c1a8418eb8f785e7f02c0631119d25462a7c653e343a"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
