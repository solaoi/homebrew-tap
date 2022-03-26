class Colc < Formula
  version '1.0.4'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.4/colc_darwin_amd64.tar.gz"
  sha256 'c6dcb378dc6ca32db39de8206e69c419568fa89dd53ab15173da487f79af3578'
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
