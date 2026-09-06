class Engram < Formula
  desc "Local semantic memory for coding agents: markdown notes in, a 200 MB search engine out"
  homepage "https://github.com/codexofc/engrams"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/codexofc/engrams/releases/download/v0.4.1/engram-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "6f474b05fd25740a405c36fdc10c0b103a5e35f291a816bd079895173610b523"
    end
    on_intel do
      url "https://github.com/codexofc/engrams/releases/download/v0.4.1/engram-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "9a20fc5f3a839ff693b256e2938c99e90251fe0665cc12e3111cb38ddd7a148b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codexofc/engrams/releases/download/v0.4.1/engram-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b9566ab7eefa973900094bd8028c80c179204f35a83d67a28d3460faffc988c"
    end
    on_intel do
      url "https://github.com/codexofc/engrams/releases/download/v0.4.1/engram-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d318302a92c55f4b777631f0d27ab01a4410012e1da03943ef16b0db190f2150"
    end
  end

  def install
    bin.install "engram"
  end

  def caveats
    <<~EOS
      Run `engram init` for the guided setup: it downloads the model once and
      wires the coding agents installed on this machine.
    EOS
  end

  test do
    assert_match "engram 0.4.1", shell_output("#{bin}/engram version")
  end
end
