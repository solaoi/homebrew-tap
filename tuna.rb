# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Software to generate and serve JSON/HTML on the node-based editor"
  homepage "https://github.com/solaoi/tuna-mayonnaise"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.9/tuna_darwin_amd64.tar.gz"
      sha256 "e873792eeabe677069077e95de738cc98b5603864e6df600fd8c0eedb3d9f44f"

      def install
        bin.install "tuna"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.9/tuna_linux_amd64.tar.gz"
      sha256 "335f22cef654811c4a5344c52dc39b1d2764757035108cd78171abcc95cb71e1"

      def install
        bin.install "tuna"
      end
    end
  end

  test do
    system "#{bin}/tuna help"
  end
end
