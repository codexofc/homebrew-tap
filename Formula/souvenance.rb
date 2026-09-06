class Souvenance < Formula
  desc "Local semantic memory for coding agents: markdown notes in, a 200 MB search engine out"
  homepage "https://github.com/codexofc/souvenance"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/codexofc/souvenance/releases/download/v0.5.0/souvenance-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "c765c7edfd4148237c8a0998223b7a06049571efa097178d843aa426fd0fa5fa"
    end
    on_intel do
      url "https://github.com/codexofc/souvenance/releases/download/v0.5.0/souvenance-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "b5375aa417104cfe64dff80957a09124dfff90accbcc3d1d63669058ce54dd0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codexofc/souvenance/releases/download/v0.5.0/souvenance-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c5bd27dc885e8f14753bed07fad5ba1d3de1a5b86276e6c358b9557b33f60d05"
    end
    on_intel do
      url "https://github.com/codexofc/souvenance/releases/download/v0.5.0/souvenance-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecbccc3444281369bf3a1d745d82a86cf1744b413875ac2d163046e15609ff77"
    end
  end

  def install
    bin.install "souvenance"
  end

  def caveats
    <<~EOS
      Run `souvenance init` for the guided setup: it downloads the model once and
      wires the coding agents installed on this machine.
    EOS
  end

  test do
    assert_match "souvenance 0.5.0", shell_output("#{bin}/souvenance version")
  end
end
