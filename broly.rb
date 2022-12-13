class Broly < Formula
  version '0.2.3'
  homepage 'https://github.com/solaoi/broly'
  url "https://github.com/solaoi/broly/releases/download/v0.2.3/broly_darwin_amd64.tar.gz"
  sha256 '744f750eaa57b906298b1c5263696b6e478c995f99107e9da7deb07ca630ab5c'
  head 'https://github.com/solaoi/broly.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'broly'
  end
end
