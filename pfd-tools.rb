class PfdTools < Formula
  desc "Tools related to Process Flow Diagram (PFD) such as static analyzers and schedulers"
  homepage "https://github.com/Kuniwak/pfd-tools"
  version "4.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/pfd-tools/releases/download/v4.0.3/pfd-tools_4.0.3_darwin_arm64.tar.gz"
      sha256 "135776188cde0b94e593acdd15af07034bb8189af5c2f97f4a7cb31d9402c80a"
    else
      url "https://github.com/Kuniwak/pfd-tools/releases/download/v4.0.3/pfd-tools_4.0.3_darwin_amd64.tar.gz"
      sha256 "cb9a4bcd5d259344e30ce14936e5bda348f87d199a0fbb6c2ecae404f2626e86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/pfd-tools/releases/download/v4.0.3/pfd-tools_4.0.3_linux_arm64.tar.gz"
      sha256 "b6493a5e68723eed3df1b037586387092ae37ab9d6dd9000d60af3913e0d211d"
    else
      url "https://github.com/Kuniwak/pfd-tools/releases/download/v4.0.3/pfd-tools_4.0.3_linux_amd64.tar.gz"
      sha256 "d49b807216726f5d47fd0bcbc89206d2e9aa548f923614750f16c8044950711e"
    end
  end

  def install
    bin.install "pfdlint"
    bin.install "pfdtable"
    bin.install "pfdrenum"
    bin.install "pfdplan"
    bin.install "pfddiff"
    bin.install "pfdquery"
    bin.install "bizday"
    bin.install "planmaster"
    bin.install "plantimeline"
    bin.install "holidays"
    bin.install "criticalpath"
  end

  test do
    system "#{bin}/pfdlint", "-v"
  end
end
