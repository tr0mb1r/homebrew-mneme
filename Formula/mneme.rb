class Mneme < Formula
  desc "MCP-native persistent memory tool for AI agents"
  homepage "https://github.com/tr0mb1r/mneme"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.2/mneme-1.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "3237d547205d90039314a35a65411ec5204e76cf7cd0e22fb02530eb2d433e1d"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.2/mneme-1.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "6359bf78504afc81497948b38d1f09165f8304022214160889f7bf4132ac52f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.2/mneme-1.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b98561225f4dc7ac50b62f5b042c7e1fc2636091668394de62d1cf3285d0faa4"
    end
    on_intel do
      url "https://github.com/tr0mb1r/mneme/releases/download/v1.2.2/mneme-1.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2aee57f407ae3de421159e6dba6f72e3281826af9b2de2478caca9c06c9679f9"
    end
  end

  def install
    bin.install "mneme"
  end

  test do
    assert_match "mneme #{version}", shell_output("#{bin}/mneme --version")
  end
end
