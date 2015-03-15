![http://sea3d.googlecode.com/svn/tags/SEA3D-Top.jpg](http://sea3d.googlecode.com/svn/tags/SEA3D-Top.jpg)

# Introdução #

**SEA3D** é um de formato arquivo **All in One** (_Tudo em um_) em código aberto focado para games online, atualmente com versão para 3ds Max e Flash Player.

O script exporta praticamente tudo que é usado em games, incluindo instancias de geometria, material, texturas, esqueleto(Skin), câmera, áudio, animações individuais e múltiplos mapeamento.

Você também pode fazer upload de seus projetos e incorporar em sites ou blog com [Poonya](http://www.poonya.com/).

**Examplo:**
http://www.poonya.com/watch/GnLv7w5WAZa

**SEA3D Exporter + Examples + Source**
http://code.google.com/p/sea3d/downloads/list

**SEA3D Player**
http://www.sunag.com.br/sea3d/

### Como Exportar ###

O processo de exportação é bem simples basta você fazer uma pré configuração indicando o que incluirá no arquivo de saída (.sea) e clicar no botão **Export** sua cena será exportada.

![http://sea3d.googlecode.com/svn/tags/SEA3DM1.gif](http://sea3d.googlecode.com/svn/tags/SEA3DM1.gif)

**SEA3D** - _Saída_

Na aba (rollout) SEA3D você poderá modificar todos os itens de saída, incluindo a compressão de arquivos e tipo de carregamento.

**Compress Method** - _Método de compressão_

Você pode definir uma compressão de arquivo para **Zlib** ou **Delate**, embora os dois sejam praticamente idênticos o tamanho pode varias conforme o tipo de dados inserido no projeto. **Delate** é o padrão.

**Loader Type** - _Tipo de carregador_

Se você selecionar a opção **Stream** (Progressivo) seu modelo abrira por partes exibindo os antes de carregar por completo, seguindo a ordem de hierarquia e proximidade a posição zero da cena. Caso marque a opção **Default** (Padrão) seu projeto abrira como um bloco inteiro.

**Export** - _Exportar_

Você poderá escolher em exportar todos os itens (**All**), apenas os visíveis (**Visible**) ou apenas os selecionados (**Selected**).


---


### File Info ###
_Informações do arquivo_

Em **FileInfo** você poderá colocar as informações básicas do seu projeto, como direitos autorais (Copyright), titulo e site responsável.

![http://sea3d.googlecode.com/svn/tags/SEA3DM2.gif](http://sea3d.googlecode.com/svn/tags/SEA3DM2.gif)


---


### Global ###

Na aba **Global** você poderá modificar a forma que o SEA3D tratara seus modelos, todos os recursos posteriores depende destas configurações.

**Export Method** (_Método de exportação_) defini como sera processado a translação dos objetos.

![http://sea3d.googlecode.com/svn/tags/SEA3DM3.gif](http://sea3d.googlecode.com/svn/tags/SEA3DM3.gif)

**Scene Hierarchy** - _Hierarquia de cena_

Selecionando esta opção você podera exportada a hierarquia real dos objetos incluindo suas animações. (**Recomendável**)

**Real Transform** - _Transformação real_

Selecionando esta opção você obterá a translação raiz do objeto sem a hierarquia de cena. Usado apenas em caso especifico como processo de optimização.

**Reset X-Form** - _Não permite animação_

Esta opção ignorara as translação das malhas (**Mesh**) exportando apenas a geometria base, sem levar em conta a translação do objeto. **Usado apenas em problemas de compatibilidade.**


---


### Animation ###
Animação

Em **Animation** você poderá exportar ou não as animações de sua cena clicando na opção **Enabled** (_Abilitar_).

![http://sea3d.googlecode.com/svn/tags/SEA3DM4.gif](http://sea3d.googlecode.com/svn/tags/SEA3DM4.gif)

**Start** - _Início do quadro_

Aqui você podera definir o valor de inicio de sua animação em frames.

**End** - _Fim do quadro_

Aqui você podera definir o valor de fim de sua animação em frames.

**Export Method**

**Key Frame** (_Quadro chave_) irar exportar apenas os objetos que **tiverem mais de uma key-frame**, independente da posição, rotação ou escala.

**Diferrence** (_Diferença_) irar exportar apenas os objetos que **tiverem animações reais**. (**Recomendado**)


---


### Geometry ###
_Geometria_

![http://sea3d.googlecode.com/svn/tags/SEA3DM5.gif](http://sea3d.googlecode.com/svn/tags/SEA3DM5.gif)

**Texture Coordinates** - _Coordenadas de textura_

Marcando esta opção ele exportara o mapeamento UV da geometria do canal primário.

`Caso não a marque o programa criara automaticamente no carregamento baseado em suas vértices.`

**Multiple Channels** - _Múltiplos Canais_

Marcando esta opção ele exportara o todos os mapeamento UV da geometria. Necessário ser for fazer **baking** ("separação") da textura para criação de **LightMap** (_mapa de luz_) e **DetailMap** (_mapa de detalhes_).

**Normal** - _Normais_

Exportara as normais do objeto.

`Caso não a marque o programa criara automaticamente no carregamento baseado em suas vérticesização do grupo.`

**Morpher**

Exporta o modificador **Morpher** e suas animações.

**Vertex Color** - _Cor dos vértices_

Exporta a cor das vértices (_VertexPaint_). Esta opção é recomendada apenas para programadores.


---


### Skeleton ###
_Esqueleto_

Marcando a opção **Enabled** na aba **Skeleton** você ativara a exportação da animação e/ou esqueleto de qualquer modelo que contenha o modificador **Skin**. Ele aceita tanto **Bones**, **Biped** e **CAT**.

![http://sea3d.googlecode.com/svn/tags/SEA3DM6.gif](http://sea3d.googlecode.com/svn/tags/SEA3DM6.gif)

**Bind Frame** - _Quadro de vinculo_

Aqui você deve definir a frame onde o modelo estará em sua posição padrão. **Recomendado que seja a posição inicial da malha.**

**Offset Position** - _Posição de deslocamento_

Marcando esta opção SEA3D usara a **Bind Frame** como a posição zero do Bone base do esqueleto. **Recomendado para games.**


---


### Publicando na Web ###

SEA3D é um projeto em código aberto que pode ser adaptado por qualquer programador para um fim especifico. Para quem é ou não programador tem um portal chamado [Poonya](http://www.poonya.com/) onde você poderá incluir seus projetos e assets em 4 passos.

  1. Clique em **upload assets**. (É necessário cadastro)
  1. Clique na **setinha para cima** para selecionar seu arquivo.
  1. Preencha os campos de **titulo** e **descrição em (What is?)** do seu projeto, as **tags devem ser separadas com espaço**.
  1. Clique no botão **upload** e fotografe seu modelo.

Seu projeto estará automaticamente na lista de projetos do [Poonya](http://www.poonya.com/).

![http://sea3d.googlecode.com/svn/tags/SEA3DMPoonya-min.gif](http://sea3d.googlecode.com/svn/tags/SEA3DMPoonya-min.gif)

Você também pode incorporar seu arquivo **SEA3D** usando a **ID** de seu projeto.

**Exemplo:** http://www.poonya.com/embed/GnLv7w5WAZa