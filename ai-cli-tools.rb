class AiCliTools < Formula
  desc "CLI Tools for CLI AI Agents"
  homepage "https://github.com/Kuniwak/ai-cli-tools"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/v3.0.0/ai-cli-tools_3.0.0_darwin_arm64.tar.gz"
      sha256 "6b21655cccdab8b1d23eea908e43e9d87ef21d7d910a82b88d89e2952b7f447b"
    else
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/v3.0.0/ai-cli-tools_3.0.0_darwin_amd64.tar.gz"
      sha256 "73383ecc9b8db6cf2c97bac8612063defa144f389200b98ce502848ce057e556"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/v3.0.0/ai-cli-tools_3.0.0_linux_arm64.tar.gz"
      sha256 "2e2ad7f210d42a3e7082e5730c3a2c11f55ed0c712f6a333d5330527e20ea38c"
    else
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/v3.0.0/ai-cli-tools_3.0.0_linux_amd64.tar.gz"
      sha256 "b397d3c192048a4137630d975a19039ad4c97166e3339eb2bb1d3d3b70dad042"
    end
  end

  def install
    bin.install "stdinexec"
    bin.install "stdinsubst"
    bin.install "stdinsplit"
    bin.install "stdinsub"
  end

  test do
    system "#{bin}/stdinexec", "-v"
  end
end
