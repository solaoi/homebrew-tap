class Colc < Formula
  version '1.0.9'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.9/colc_darwin_amd64.tar.gz"
  sha256 '739e48ab840ee6e72d0f25d9191568d509b932f9a8755796b023e6f15dfec45e'
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
