class PumlTools < Formula
  desc "A suite of tools for viewing, editing and searching PlantUML diagrams"
  homepage "https://github.com/Kuniwak/puml-tools"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.0/puml-tools_3.2.0_darwin_arm64.tar.gz"
      sha256 "c1d2b3572d5989a41f71a495644b55eae27014f567b912ccd80fc7f5c21c93f9"
    else
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.0/puml-tools_3.2.0_darwin_amd64.tar.gz"
      sha256 "241fa755529352eb16bdad51581dd8a98109867c39a4c5fdb69b8371991e3591"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.0/puml-tools_3.2.0_linux_arm64.tar.gz"
      sha256 "89016dd362119916260df9b7a2ccf15b1e003be3d7615c78b8b5f934e5cddcb8"
    else
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.0/puml-tools_3.2.0_linux_amd64.tar.gz"
      sha256 "42eab35f8aa1ec266af1b7916e1bd4cfcc36c84b1e175c1e4c8e61e2a17e4987"
    end
  end

  def install
    bin.install "pumlc42seqchk"
    bin.install "pumlc4bdyls"
    bin.install "pumlc4fold"
    bin.install "pumlhelp"
    bin.install "pumlparse"
    bin.install "pumlseq2c4"
    bin.install "pumlseqbreak"
    bin.install "pumlseqexpand"
    bin.install "pumlseqfold"
    bin.install "pumlseqgroupcut"
    bin.install "pumlseqgroupmask"
    bin.install "pumlseqgroupsplit"
    bin.install "pumlseqhide"
    bin.install "pumlseqmsg"
    bin.install "pumlseqproj"
    bin.install "pumlseqrefinement"
    bin.install "pumlseqsubset"
    bin.install "pumlseqtrace"
    bin.install "pumltodo"
  end

  test do
    system "#{bin}/pumlhelp", "-v"
  end
end
