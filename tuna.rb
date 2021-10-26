# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuna < Formula
  desc "Software to generate and serve JSON/HTML on the node-based editor"
  homepage "https://github.com/solaoi/tuna-mayonnaise"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.4/tuna_darwin_amd64.tar.gz"
      sha256 "09f60cdc6a98380758e734affc518d78639e6bb497778b9e7a095342658fc4e6"

      def install
        bin.install "tuna"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/solaoi/tuna-mayonnaise/releases/download/v0.0.4/tuna_linux_amd64.tar.gz"
      sha256 "699018fb3c4a10d414dcd051af0231e5458ba02e23702b6d9da38ad1985d3862"

      def install
        bin.install "tuna"
      end
    end
  end

  test do
    system "#{bin}/tuna help"
  end
end
