class PumlTools < Formula
  desc "A suite of tools for viewing, editing and searching PlantUML diagrams"
  homepage "https://github.com/Kuniwak/puml-tools"
  version "3.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.1/puml-tools_3.2.1_darwin_arm64.tar.gz"
      sha256 "cf560c3c56f39c64e2a7910af6db7b16ca139edecf9f533616a3b03cc6a1e4d4"
    else
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.1/puml-tools_3.2.1_darwin_amd64.tar.gz"
      sha256 "f38196de459ee35414f7deb3e9a062b89ddf70f36d9ca84982fe6001cce1ae3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.1/puml-tools_3.2.1_linux_arm64.tar.gz"
      sha256 "0e95fea3ec78224c603565d190280fae2dc4ee93fca539cfc73b495d2c6eff8c"
    else
      url "https://github.com/Kuniwak/puml-tools/releases/download/3.2.1/puml-tools_3.2.1_linux_amd64.tar.gz"
      sha256 "259b734c6078bb8ab72357af43527d2c837c8139f9cb615bb7010bf0be04c57a"
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
    system "#{bin}/pumlparse", "-v"
  end
end
