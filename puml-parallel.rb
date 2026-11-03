class PumlParallel < Formula
  desc "A tool for composing PlantUML state diagrams in parallel with synchronization events (CSP interface parallel)"
  homepage "https://github.com/Kuniwak/puml-parallel"
  version "3.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.9.0/csdfparallel_3.9.0_darwin_arm64.tar.gz"
      sha256 "7aca70c7191305b4506d04682233ab2824795bcdf057debbc83cc82a2c1f5955"
    else
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.9.0/csdfparallel_3.9.0_darwin_amd64.tar.gz"
      sha256 "a3c7320464eb950a8f73993b9924329941932b5658e92d8a791301a2829f47ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.9.0/csdfparallel_3.9.0_linux_arm64.tar.gz"
      sha256 "b91449d85a6fccff7c78e73d4ec9929092a249387580f985c09035944280d654"
    else
      url "https://github.com/Kuniwak/puml-parallel/releases/download/v3.9.0/csdfparallel_3.9.0_linux_amd64.tar.gz"
      sha256 "fc652735d83f3af0bd1db8322d150134ac146ab95a12c52b26ce9b45b4874726"
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
