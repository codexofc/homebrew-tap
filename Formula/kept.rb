class Kept < Formula
  desc "Local semantic memory for coding agents: markdown notes in, a 200 MB search engine out"
  homepage "https://github.com/codexofc/kept"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/codexofc/kept/releases/download/v0.6.1/kept-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "3a94f1a1e1c3d333856e6b0429dec171956fb6c4e3b90549cbbd3e2d4eb76cf9"
    end
    on_intel do
      url "https://github.com/codexofc/kept/releases/download/v0.6.1/kept-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "eff068f98a9c7726198044c6e99cc73fef3a6c1577d82237c5f201ed1f897879"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codexofc/kept/releases/download/v0.6.1/kept-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b3267fec6042af4fdacd18c1a0127c87ddb0391bd8a3cfc1b3bde5732a81311"
    end
    on_intel do
      url "https://github.com/codexofc/kept/releases/download/v0.6.1/kept-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46c5e4520cd5931157dde4df8ea5f3642a0c1d4f0e49f492ed0b6b694bddcf01"
    end
  end

  def install
    bin.install "kept"
  end

  def caveats
    <<~EOS
      Run `kept init` for the guided setup: it downloads the model once and
      wires the coding agents installed on this machine.
    EOS
  end

  test do
    assert_match "kept 0.6.1", shell_output("#{bin}/kept version")
  end
end
