class AiCliTools < Formula
  desc "CLI Tools for CLI AI Agents"
  homepage "https://github.com/Kuniwak/ai-cli-tools"
  version "3.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/3.0.1/ai-cli-tools_3.0.1_darwin_arm64.tar.gz"
      sha256 "9f8b2358327599b0409abb796a2a4f4c9304ccb9fa2d051db4c7c3ea74eb504d"
    else
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/3.0.1/ai-cli-tools_3.0.1_darwin_amd64.tar.gz"
      sha256 "0fff3e691db9eff70509f09c10763fcca89c97c59b0d4d51a3013878ef2c78c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/3.0.1/ai-cli-tools_3.0.1_linux_arm64.tar.gz"
      sha256 "3a9081edf2a318b6261349dc00d6d9b75f51693154d8046f1e542cd2f29bd448"
    else
      url "https://github.com/Kuniwak/ai-cli-tools/releases/download/3.0.1/ai-cli-tools_3.0.1_linux_amd64.tar.gz"
      sha256 "00333e18a4de40cd089b4cf756e6ee7d05b6be19272735e7b6b4a181f5acf64a"
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
