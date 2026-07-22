# Ditado por voz local e offline. https://github.com/tone-lotto/falaQueEuTeEscuto
#
# Instalação:  brew install tone-lotto/tap/fala
#
# Macs com Apple Silicon e Intel. Windows ainda não.
class Fala < Formula
  desc "Ditado por voz local e offline: segure a tecla, fale, solte"
  homepage "https://github.com/tone-lotto/falaQueEuTeEscuto"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v0.1.0/fala-aarch64-apple-darwin.tar.gz"
      sha256 "9289ee83fc305b486cc94ddc8379f7223c37184f08c99ff32ffc4c753a99b4c2"
    end
    on_intel do
      url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v0.1.0/fala-x86_64-apple-darwin.tar.gz"
      sha256 "d03dcc18198689a333a503534ed7df561c30dcd1afc7482935e1ab982a568dea"
    end
  end

  def install
    bin.install "fala"
  end

  def caveats
    <<~EOS
      O fala precisa de duas permissões do macOS na primeira vez:
        • Acessibilidade — para detectar a tecla e digitar o texto
        • Microfone — para ouvir sua voz

      Instalado por aqui, o fala é um binário de linha de comando. Para a
      experiência completa (app clicável, ícone na barra de menu e o pedido de
      permissão do microfone), baixe o fala.app na página de Releases:
      https://github.com/tone-lotto/falaQueEuTeEscuto/releases

      Configure também: Ajustes do Sistema → Teclado →
      "Pressionar a tecla 🌐 para" → Nenhuma Ação.
    EOS
  end

  test do
    assert_match "fala", shell_output("#{bin}/fala --help")
  end
end
