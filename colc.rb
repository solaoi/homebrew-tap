class Colc < Formula
  version '1.0.6'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.6/colc_darwin_amd64.tar.gz"
  sha256 'a4112f241ca7fa2637aad1345e2c87a7f356f85fd142ec9a4c36dfd5883a7c47'
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
