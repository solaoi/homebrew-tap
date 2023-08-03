class Voicepeaky4gpt < Formula
  version '1.0.0'
  homepage 'https://github.com/solaoi/voicepeaky4gpt'
  url "https://github.com/solaoi/voicepeaky4gpt/releases/download/v1.0.0/voicepeaky4gpt_darwin_amd64.tar.gz"
  sha256 '5e7c465a32336ca53b88a310e7a5637345f969addc1ce7f13285d88123609cb8'
  head 'https://github.com/solaoi/voicepeaky4gpt.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'voicepeaky4gpt'
  end
end
