# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Software to generate and serve JSON/HTML on the node-based editor"
  homepage "https://github.com/solaoi/tuna-mayonnaise"
  version "0.0.25"
  license "MIT"

  on_macos do
    url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.25/tuna_darwin_amd64.tar.gz"
    sha256 "6605fde2b5cd8338021c63b955e47e7b4c8183123e6d0ac09564490b3fe6941c"

    def install
      bin.install "tuna"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Tuna
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.25/tuna_linux_amd64.tar.gz"
      sha256 "281bb9d31fa74d46873c7862bb6846c50aa8facfa5fc4ab562c69d12e8cff46a"

      def install
        bin.install "tuna"
      end
    end
  end

  test do
    system "#{bin}/tuna help"
  end
end
