# Ditado por voz local e offline. https://github.com/tone-lotto/falaQueEuTeEscuto
#
# Instalação:  brew install tone-lotto/tap/fala
#
# Por enquanto só Apple Silicon: os binários de Mac Intel serão adicionados
# quando o pipeline de build automático for ativado.
class Fala < Formula
  desc "Ditado por voz local e offline: segure a tecla, fale, solte"
  homepage "https://github.com/tone-lotto/falaQueEuTeEscuto"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tone-lotto/falaQueEuTeEscuto/releases/download/v0.1.0/fala-aarch64-apple-darwin.tar.gz"
      sha256 "5347acf1afab56e12084489984dbb14857a6b6d6831ad38c2bdcbc7bdfb956a6"
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
