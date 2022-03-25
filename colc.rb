class Colc < Formula
  version '1.0.2'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.2/colc_darwin_amd64.tar.gz"
  sha256 '1b32dfc0096a502a160aab3a0705340d46b156743bce35603ba1c58ecdab0991'
  head 'https://github.com/solaoi/colc.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'colc'
  end
end
