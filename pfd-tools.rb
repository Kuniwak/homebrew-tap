class PfdTools < Formula
  desc "Tools related to Process Flow Diagram (PFD) such as static analyzers and schedulers"
  homepage "https://github.com/Kuniwak/pfd-tools"
  version "4.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/pfd-tools/releases/download/4.0.4/pfd-tools_4.0.4_darwin_arm64.tar.gz"
      sha256 "f45d1913f32f9a94ca132a419075a02227f9492190c9a59879ccfce28ce80967"
    else
      url "https://github.com/Kuniwak/pfd-tools/releases/download/4.0.4/pfd-tools_4.0.4_darwin_amd64.tar.gz"
      sha256 "9de82b535af580fc068c352784e761f56f9ab191e91ad806401a6bbd649ac8e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kuniwak/pfd-tools/releases/download/4.0.4/pfd-tools_4.0.4_linux_arm64.tar.gz"
      sha256 "0aaf9d1a8f436aab03d87ef4810b5073f6574c4c30c110369e0bb9d309f30ecb"
    else
      url "https://github.com/Kuniwak/pfd-tools/releases/download/4.0.4/pfd-tools_4.0.4_linux_amd64.tar.gz"
      sha256 "48a083886a14a02a3a505e651a84961dae82343b5d445089f51854cb7f260e3c"
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
