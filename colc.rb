class Colc < Formula
  version '1.0.7'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.7/colc_darwin_amd64.tar.gz"
  sha256 '8e3f0478a6ebea11ca820b0d0ee91912399150032aec37af912a9e10a1d5e172'
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
