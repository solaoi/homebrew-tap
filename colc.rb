class Colc < Formula
  version '1.0.11'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.11/colc_darwin_amd64.tar.gz"
  sha256 '4a587e771edd697603f1b6b07fb48515377ba29b0f4cf0e906a80792f963990f'
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
