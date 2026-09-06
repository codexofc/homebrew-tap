class Kept < Formula
  desc "Local semantic memory for coding agents: markdown notes in, a 200 MB search engine out"
  homepage "https://github.com/codexofc/kept"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/codexofc/kept/releases/download/v0.6.0/kept-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "124c77614f7ccc5297734db9cff8267ce28bb1a7a70b18fedb6faac6d86e724f"
    end
    on_intel do
      url "https://github.com/codexofc/kept/releases/download/v0.6.0/kept-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "864b032599a1f8163f266ec6a3a0db75f5863642ff7331e373818f40eee2e780"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codexofc/kept/releases/download/v0.6.0/kept-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad2c6f51f815748c1f21ece3c520e71fa037b7fd7e06a72d9f5e8a84e1b995c3"
    end
    on_intel do
      url "https://github.com/codexofc/kept/releases/download/v0.6.0/kept-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4caed6c5660469af08c7872211f6535bb3a6489bd4238c6d25bf702ea5a8afa"
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
    assert_match "kept 0.6.0", shell_output("#{bin}/kept version")
  end
end
