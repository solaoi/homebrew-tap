class Voicepeaky < Formula
  version '1.0.2'
  homepage 'https://github.com/solaoi/voicepeaky'
  url "https://github.com/solaoi/voicepeaky/releases/download/v1.0.2/voicepeaky_darwin_amd64.tar.gz"
  sha256 'a866d65cdb7a4a3bd5deab62abb1253d975d17f64cb13dc86074cb20a60b0de6'
  head 'https://github.com/solaoi/voicepeaky.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'voicepeaky'
  end
end
