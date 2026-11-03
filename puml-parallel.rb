class PumlParallel < Formula
  desc "A tool for composing PlantUML state diagrams in parallel with synchronization events (CSP interface parallel)"
  homepage "https://github.com/Kuniwak/puml-parallel"
  version "3.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.10.0/csdfparallel_3.10.0_darwin_arm64.tar.gz"
      sha256 "63c65cc58d77d29226f8bfde9b9957e962916d144d08dfa05994c481dadfa9a1"
    else
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.10.0/csdfparallel_3.10.0_darwin_amd64.tar.gz"
      sha256 "f3d7f936dc40ea1af7213f70e12d4ec1ca08c131c1dbd4fa3e23bc73e131b883"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.10.0/csdfparallel_3.10.0_linux_arm64.tar.gz"
      sha256 "792aeb28b46f884233d2af78e3cb502ee0fe00aee6048bd94470addc62b317c2"
    else
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.10.0/csdfparallel_3.10.0_linux_amd64.tar.gz"
      sha256 "cd084411acb010710aa074026a51d9d99cc1b87325e25193ac6d9b2fee9ccfa1"
    end
  end

  def install
    bin.install "csdfparallel"
    bin.install "csdfpromote"
    bin.install "csdfhide"
    bin.install "csdfcomp"
    bin.install "csdfparse"
    bin.install "csdfevents"
    bin.install "csdfrepl"
    bin.install "csdfsort"
    bin.install "csdfslice"
    bin.install "csdflint"
    bin.install "csdflivelockfree"
    bin.install "csdftracechk"
    bin.install "csdftranstable"
    bin.install "csdfrefinement"
    bin.install "csdfrepld"
    bin.install "csdfreplcmd"
    bin.install "obligationirc"
    bin.install "csdfhelp"
    bin.install "csdfbmc"
  end

  def caveats
    <<~EOS
      Optional prerequisites, needed only by some commands:
        - csdfbmc: Python 3.11 or later on the PATH (or set $CSDFBMC_PYTHON).
        - csdfrefinement and csdflivelockfree proof checks: Isabelle with
          CSP-Prover (Kuniwak fork), and/or Lean 4 with lean-csp-prover
          and Mathlib v4.29.0-rc4 or later.
    EOS
  end

  test do
    system "#{bin}/csdfparallel", "-v"
  end
end
