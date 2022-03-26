class Colc < Formula
  version '1.0.10'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.10/colc_darwin_amd64.tar.gz"
  sha256 '690f3f8b0320101a3131d22b8294c5177a48b77e3dd77f453cb4d376e6bcf0f2'
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
