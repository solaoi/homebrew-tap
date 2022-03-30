class Colc < Formula
  version '1.0.18'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.18/colc_darwin_amd64.tar.gz"
  sha256 '166235a027cadef5546743969dd76851fbde2f83edfec694d10e1d99564c02da'
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
