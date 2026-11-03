class PfdTools < Formula
  desc "Tools related to Process Flow Diagram (PFD) such as static analyzers and schedulers"
  homepage "https://github.com/Kuniwak/pfd-tools"
  version "7.4.2-oss.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/pfd-tools/releases/download/7.4.2-oss.1/pfd-tools_7.4.2-oss.1_darwin_arm64.tar.gz"
      sha256 "1fbbedc2bf46e35b4dd491b8df55c55de4f61a123cb225f88fe0f9790cb2d2e5"
    else
      url "https://github.com/Kuniwak/pfd-tools/releases/download/7.4.2-oss.1/pfd-tools_7.4.2-oss.1_darwin_amd64.tar.gz"
      sha256 "9bc9720af2411767a0422cd901b625300b234fdd450c6cad98b774f44c4f38f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/pfd-tools/releases/download/7.4.2-oss.1/pfd-tools_7.4.2-oss.1_linux_arm64.tar.gz"
      sha256 "854643c0c8181e18174b0223468f16ef9fbcd72a5fb6e0721b534acd6239b777"
    else
      url "https://github.com/Kuniwak/pfd-tools/releases/download/7.4.2-oss.1/pfd-tools_7.4.2-oss.1_linux_amd64.tar.gz"
      sha256 "ab80520064ae9e372387f290cfcc92e7b98f8aa81338e59b95faf677b88c82d4"
    end
  end

  def install
    bin.install "pfdhelp"
    bin.install "pfdlint"
    bin.install "pfdsort"
    bin.install "pfdfix"
    bin.install "pfdrenum"
    bin.install "pfddupmark"
    bin.install "pfdcpcomp"
    bin.install "pfdtable"
    bin.install "pfdestcallout"
    bin.install "pfdesttable"
    bin.install "pfdres"
    bin.install "pfdticket"
    bin.install "pfdplan"
    bin.install "criticalpath"
    bin.install "planmaster"
    bin.install "plantimeline"
    bin.install "bizday"
    bin.install "holidays"
    bin.install "pfdquery"
    bin.install "pfddiff"
    bin.install "pfdrun"
    bin.install "pfdrungraph"
    bin.install "pfddot"
    bin.install "pfddeadlock"
    bin.install "pfdparse"
  end

  test do
    system "#{bin}/pfdlint", "-v"
  end
end
