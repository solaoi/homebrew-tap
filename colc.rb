class Colc < Formula
  version '1.0.0'
  homepage 'https://github.com/solaoi/colc'
  url "https://github.com/solaoi/colc/releases/download/v1.0.0/colc_darwin_amd64.tar.gz"
  sha256 'da3a683c05c6ed1a9db27b742d0810631d1ccd2cce23d952446b712e1288a519'
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
