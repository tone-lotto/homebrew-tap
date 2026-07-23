# Instalação do app completo, com ícone na barra de menu.
# A partir da v0.1.1 o app é assinado e notarizado pela Apple, então abre
# normalmente também quando baixado pelo navegador.
#
#   brew install --cask tone-lotto/tap/fala
cask "fala" do
  version "0.1.2"

  on_arm do
    url "https://fala.up.railway.app/downloads/fala-aarch64-apple-darwin.app.zip"
    sha256 "d11e8ec9d7b4ed5e0168fdd6cb2aed3796bd5fe3c8ff6fec6b90f0b7b33c694e"
  end
  on_intel do
    url "https://fala.up.railway.app/downloads/fala-x86_64-apple-darwin.app.zip"
    sha256 "356b82e4c46de65961692be7ed6b2db83efeb790cbcc37e80b22afc076bbf787"
  end

  name "Fala Que Eu Te Escuto"
  desc "Ditado por voz local e offline: segure a tecla, fale, solte"
  homepage "https://fala.up.railway.app"

  depends_on macos: :big_sur

  app "fala.app"

  caveats <<~EOS
    Na primeira vez, o Fala Que Eu Te Escuto pede três permissões:
      . Monitoramento de Entrada, para perceber que você segurou a tecla
      . Acessibilidade, para digitar o texto por você
      . Microfone, para ouvir a sua voz

    Configure também:
      Ajustes do Sistema → Teclado → "Pressionar a tecla 🌐 para" → Nenhuma Ação

    Depois: segure a tecla 🌐 (Fn), fale, e solte.
  EOS
end
