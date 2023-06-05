import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

String getTitle(String? signo) {
  if (signo == "aries") {
    return "Áries";
  } else if (signo == "touro") {
    return "Touro";
  } else if (signo == "gemeos") {
    return "Gêmeos";
  } else if (signo == "cancer") {
    return "Câncer";
  } else if (signo == "leao") {
    return "Leão";
  } else if (signo == "virgem") {
    return "Virgem";
  } else if (signo == "libra") {
    return "Libra";
  } else if (signo == "escorpiao") {
    return "Escorpião";
  } else if (signo == "sagitario") {
    return "Sagitário";
  } else if (signo == "capricornio") {
    return "Capricórnio";
  } else if (signo == "aquario") {
    return "Aquário";
  } else if (signo == "peixes") {
    return "Peixes";
  }
  return "";
}

String getBirthDate(String? signo) {
  if (signo == "aries") {
    return "Nascidos entre 21 de Março e 20 de Abril";
  } else if (signo == "touro") {
    return "Nascidos entre 21 de Abril e 20 de Maio";
  } else if (signo == "gemeos") {
    return "Nascidos entre 21 de Maio e 20 de Junho";
  } else if (signo == "cancer") {
    return "Nascidos entre 21 de Junho e 22 de Julho";
  } else if (signo == "leao") {
    return "Nascidos entre 23 de Julho e 22 de Agosto";
  } else if (signo == "virgem") {
    return "Nascidos entre 23 de Agosto e 22 de Setembro";
  } else if (signo == "libra") {
    return "Nascidos entre 23 de Setembro e 22 de Outubro";
  } else if (signo == "escorpiao") {
    return "Nascidos entre 23 de Outubro e 21 Novembro";
  } else if (signo == "sagitario") {
    return "Nascidos entre 22 de Novembro e 21 de Dezembro";
  } else if (signo == "capricornio") {
    return "Nascidos entre 22 de Dezembro e 19 de Janeiro";
  } else if (signo == "aquario") {
    return "Nascidos entre 20 de Janeiro e 18 de Fevereiro";
  } else if (signo == "peixes") {
    return "Nascidos entre 19 de Fevereiro e 20 de Março";
  }

  return "";
}

String getElement(String? signo) {
  if (signo == "aries") {
    return "Fogo";
  } else if (signo == "touro") {
    return "Terra";
  } else if (signo == "gemeos") {
    return "Ar";
  } else if (signo == "cancer") {
    return "Água";
  } else if (signo == "leao") {
    return "Fogo";
  } else if (signo == "virgem") {
    return "Terra";
  } else if (signo == "libra") {
    return "Ar";
  } else if (signo == "escorpiao") {
    return "Água";
  } else if (signo == "sagitario") {
    return "Fogo";
  } else if (signo == "capricornio") {
    return "Terra";
  } else if (signo == "aquario") {
    return "Ar";
  } else if (signo == "peixes") {
    return "Água";
  }

  return "";
}

String getPlanet(String? signo) {
  if (signo == "aries") {
    return "Marte";
  } else if (signo == "touro") {
    return "Vênus";
  } else if (signo == "gemeos") {
    return "Mercúrio";
  } else if (signo == "cancer") {
    return "Lua";
  } else if (signo == "leao") {
    return "Sol";
  } else if (signo == "virgem") {
    return "Mercúrio";
  } else if (signo == "libra") {
    return "Vênus";
  } else if (signo == "escorpiao") {
    return "Marte e Plutão";
  } else if (signo == "sagitario") {
    return "Júpiter";
  } else if (signo == "capricornio") {
    return "Saturno";
  } else if (signo == "aquario") {
    return "Saturno e Urano";
  } else if (signo == "peixes") {
    return "Júpiter e Netuno";
  }
  return "";
}

String getQuality(String? signo) {
  if (signo == "aries") {
    return "Espontaneidade, coragem e energia";
  } else if (signo == "touro") {
    return "Persistência, sensualidade e teimosia";
  } else if (signo == "gemeos") {
    return "Curiosidade, inteligência e liberdade";
  } else if (signo == "cancer") {
    return "Sensibilidade, carinho e família";
  } else if (signo == "leao") {
    return "Criatividade, autoestima e nobreza";
  } else if (signo == "virgem") {
    return "Objetividade, humanidade e organização";
  } else if (signo == "libra") {
    return "Vaidade, empatia e diplomacia";
  } else if (signo == "escorpiao") {
    return "Intensidade, mistério e intuição";
  } else if (signo == "sagitario") {
    return "Otimismo, liberdade e movimento";
  } else if (signo == "capricornio") {
    return "Responsabilidade, ambição e persistência";
  } else if (signo == "aquario") {
    return "Inovação, originalidade e independência";
  } else if (signo == "peixes") {
    return "Solidariedade, intuição e desapego";
  }
  return "";
}

String getText(String? signo) {
  if (signo == "aries") {
    const String text1 =
        'Quem tem sol em Áries costuma viver no agora; além de possuir um grande prazer em existir, ação e decisão também podem ser algumas de suas marcas. A liderança é uma característica forte no signo, que pode ser usada para o empreendedorismo';
    const String text2 =
        'Dinâmicos e sinceros, quem tem sol em Áries costuma ter um forte contato com a sua individualidade, que pode parecer egoísmo em alguns momentos. Arianas e arianos tendem a ser alegres e muito extrovertidos, mas também podem ser bastante competitivos e soar um pouco autoritários. Podem preferir trabalhar sozinhos, mas costumam ter um ótimo espírito de liderança.';
    const text3 =
        'Quem tem o signo de Áries em posição marcante no Mapa Astral de nascimento, geralmente, não se cansa com facilidade; sua disposição e resistência físicas podem ser invejadas por todos os outros signos. Áries é direto para alcançar suas metas e, em casos de pouca maturidade, arianas e arianos podem gostar de criar rivalidades e ser um tanto quanto mandões. Marte como regente reforça o perfil guerreiro do signo e também sinaliza possíveis explosões emocionais.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "touro") {
    const String text1 =
        'Quem tem sol em Touro costuma não abrir mão do que traz conforto e bem-estar, mas pode ter a possessividade em evidência. O signo preza pela beleza física e pela gula. A satisfação de Touro vem do contato com todos os cinco sentidos.';
    const String text2 =
        'Calmo e persistente, se você tem sol no signo de Touro, provavelmente não costuma se irritar com facilidade. Em geral, suas posses e bens materiais são importantes para você. E, dependendo do restante do seu Mapa Astral, você pode usar isso ao seu favor, desenvolvendo uma tendência natural para acumular bens materiais, além de um ótimo senso de organização financeira. Mas atenção! Essa mesma característica pode despertar possessividade e materialismos excessivos.';
    const String text3 =
        'A combinação do elemento terra com a natureza fixa do signo de Touro indica possíveis dificuldades com mudanças. Taurinos, taurinas, quem tem ascendente, lua ou um acúmulo de planetas no signo Touro pode demonstrar certa lentidão para agir. Isso faz parte do senso de segurança da personalidade de touro, que costuma ser estratégico em cada passo. A terra fixa também pode indicar uma teimosia excessiva, difícil de controlar.';
    const String text4 =
        'O planeta Vênus como regente relaciona o signo ao amor cuidadoso e afetuoso. Taurinos e taurinas amam de forma prática e gentil, e é na convivência que isso se expressa da melhor maneira.';
    return text1 + '\n\n' + text2 + '\n\n' + text3 + '\n\n' + text4;
  } else if (signo == "gemeos") {
    const String text1 =
        'Quem tem sol em Gêmeos costuma apreciar novas ideias, novos lugares e novas pessoas. Gêmeos tem carisma de sobra e tende a fazer amigos com muita facilidade. A superficialidade e a inconsequência também podem ser algumas das marcas do signo.';
    const String text2 =
        'Curioso e bem humorado, quem tem sol no signo de Gêmeos costuma fazer amigos sem grandes dificuldades, tem uma verdadeira vocação para manter um círculo social diverso, com todas as tribos possíveis. Dois em um? Geminianos e geminianas podem ter uma personalidade versátil, que se adapta a diversas formas de pensamento e podem transitar tranquilamente por dois lados de uma questão. Mas atenção! Com imaturidade essa facilidade de mediação pode se transformar em falsidade.';
    const String text3 =
        'A combinação do elemento ar com a natureza mutável do signo indica uma facilidade de adaptação no signo de Gêmeos, além de uma inquietude por novos desafios, aprendizados e experiências. Se você tem este signo forte no Mapa Astral, ou seja, ascendente, lua ou um acúmulo de planetas em Gêmeos signo, provavelmente, odeia uma rotina massante ou exaustiva. O planeta Mercúrio como regente relaciona Gêmeos à criatividade e à comunicação.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "cancer") {
    const String text1 =
        'Quem tem sol em Câncer costuma buscar o que lhe traz segurança. O signo é maternal e emotivo e tem uma proximidade com o apego ao passado. Câncer costuma ter a intuição acentuada, sentir as coisas no ar e captar tudo logo no primeiro olhar.';
    const String text2 =
        'Emotivos e sensíveis, quem tem sol no signo de Câncer costuma ter uma forte conexão com as lembranças do passado, que podem contribuir para posturas muito sentimentais ou até melancólicas. Cancerianas e cancerianos podem ser muito apegados, mas costumam ter um cuidado ímpar com todas as pessoas que amam. Tendem a buscar segurança e proteção, e isso pode se demonstrar com comportamentos no dia a dia que não oferecem grandes riscos.';
    const String text3 =
        'Quem tem o signo de Câncer forte no Mapa Astral de nascimento se identifica com um forte instinto para ação guiado pelos sentimentos. Câncer consegue traçar estratégias sinuosas para alcançar seus objetivos e, em casos com pouca maturidade, podem usar de manipulação. A Lua como regente reforça o perfil maternal/ paternal do signo e também sinaliza para possíveis oscilações emocionais.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "leao") {
    const String text1 =
        'Quem tem sol em Leão costuma amar plateias e aplausos. O signo tem a coragem e o humor como marcas registradas, mas também o orgulho e o autoritarismo. Leão geralmente valoriza as oportunidades e aproveita cada momento, sabe amar e ter generosidade.';
    const String text2 =
        'Vaidade e bom humor podem ser marca registrada na personalidade de quem tem o sol no signo de Leão. Carismáticos e naturalmente destacáveis, leoninas e leoninos típicos tendem a ser bem extrovertidos. Sua generosidade também se destaca em seu modo de amar, a felicidade da outra pessoa na relação também é motivo de sua própria alegria.';
    const String text3 =
        'A nobreza de caráter é bem presente em quem tem um acúmulo de planetas no signo leão, que são pessoas incapazes de ter comportamentos mesquinhos. O sol como regente de Leão, destaca a tendência natural do signo ser o centro das atenções. Nativos do signo de Leão tem energia de sobra e costuma ser a alma da festa, daqueles que dançam a noite inteira sem maiores esforços. Por outro lado, o Leão signo pode sinalizar certo autoritarismo e prepotência. Leoninas e leoninos precisam tomar cuidado para que o ego ferido não desencadeia comportamentos arrogantes e um tanto quanto explosivos.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "virgem") {
    const String text1 =
        'Quem tem sol em Virgem costuma buscar constantemente a perfeição, tudo sempre poderia estar um pouco melhor. Signo observador, que costuma identificar o detalhe que ninguém mais percebe. Virgem tem praticidade e organização, mas também pode ser frio e cético.';
    const String text2 =
        'A busca pela perfeição pode ser bem presente na personalidade de quem tem o sol no signo de Virgem. Naturalmente adeptos da praticidade, virginianas e virginianos podem melhorar sua auto-estima se sentindo mais úteis e produtivos. O nível elevado de autocrítica, porém, pode levá-los a subestimar seus próprios talentos com certa facilidade.';
    const String text3 =
        'Virgem também é o signo mais leal com quem ama de verdade, familiares, amigos e nos relacionamentos amorosos. O amor de Virgem signo é baseado na verdade e na maturidade, quem tem muitos planetas neste signo pode demonstrar seus sentimentos de forma mais prática. Os cuidados com a saúde e com a higiene pessoal podem ser também características fortes que mostram a consciência da importância em se cuidar para viver bem, porém, em casos menos maduros, tendem a se manifestar como mania de limpeza ou de organização.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "libra") {
    const String text1 =
        'Quem tem sol em Libra costuma buscar sempre o equilíbrio e conviver com a indecisão. Regido por Vênus, o signo tem uma aproximação natural com as artes. Libra costuma ter ética, mas também pode ter vaidade em excesso e comportamentos considerados de “mau gosto”.';
    const String text2 =
        'A empatia e a diplomacia podem ser bem presentes na personalidade de quem tem o sol no signo Libra. Naturalmente direcionados para as relações com outras pessoas, librianas e librianos podem ter um grande talento para solucionar conflitos, porém, a preocupação em racionalizar os dois lados de uma questão pode gerar situações de dúvida e indecisão.';
    const String text3 =
        'Libra é regido por Vênus, e isso dá ao signo um apreço natural a tudo que pode ser considerado belo. Quem tem um acúmulo de planetas em Libra pode ter uma forte conexão com as artes, ou até ter facilidade para viver uma carreira artística. Em casos com pouca maturidade, essa aproximação com a beleza pode se manifestar como uma vaidade desmedida. O companheirismo pode ser uma característica marcante, como também o senso de justiça e a busca em viver todas as relações com respeito mútuo.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "escorpiao") {
    const String text1 =
        'Quem tem sol em Escorpião costuma ter muita perspicácia, não é a toa que são naturalmente detetives. O sexto sentido do signo alerta para possíveis “perigos” logo de cara. Escorpião tem uma capacidade de regeneração única, mas também pode ter muitos ciúmes.';
    const String text2 =
        'Uma forte intuição é uma das marcas registradas de quem tem Sol no signo Escorpião, geralmente orientados pelas suas emoções, escorpianos e escorpianas conseguem enxergar nas entrelinhas e identificar o que não foi dito. Bastante conectados com seus sentimentos, podem desenvolver comportamentos possessivos e obsessivos.';
    const String text3 =
        'A força e capacidade de se reinventar, mesmo diante de situações muito desafiadoras, são características de quem tem o signo de Escorpião em posição marcante no Mapa Astral, como também o autocontrole e a internalização das emoções. Marca registrada do signo, a intensidade escorpiana nasce principalmente da consciência da finitude das coisas, o que se manifesta também em uma imensa generosidade com as pessoas que ama.';
    const String text4 =
        'A memória de escorpião é muito boa, quem tem o signo forte no Mapa Astral não costuma esquecer o que lhe fazem, de bom ou de mal, e deixam bem claras suas lembranças.';
    return text1 + '\n\n' + text2 + '\n\n' + text3 + '\n\n' + text4;
  } else if (signo == "sagitario") {
    const String text1 =
        'Quem tem sol em Sagitário costuma ser viajante, sua casa é o mundo inteiro. O signo viaja muito também em sua própria mente. Não tente aprisionar Sagitário de nenhuma forma, ele não aceita limites. Otimista e jovial, pode ter exageros e uma dose de deboche.';
    const String text2 =
        'Vaidosos e bem humorados, quem tem sol no signo de Sagitário costuma enxergar com facilidade o lado positivo de cada situação. Cidadãos do mundo, sagitarianas e sagitarianos geralmente são pessoas extrovertidas, espontâneas e comunicativas que não gostam nenhum pouco de solidão. O idealismo sempre presente, também faz do signo de Sagitário o incentivador ideal, capaz de contagiar qualquer equipe sem muitos esforços.';
    const String text3 =
        'Tentar prender uma pessoa com um acúmulo de planetas no signo de Sagitário não é uma boa ideia. De alma livre e coração aventureiro, viajar, pelo mundo ou pela mente alimenta as personalidades sagitarianas, que sempre buscam por experiências que trazem mais conhecimento. Porém, é preciso ter cuidado com os comportamentos vaidosos, sagitarianos e sagitarianas podem se considerar autoridades em assuntos que não dominam e passar uma imagem de “donos da verdade”.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "capricornio") {
    const String text1 =
        'Quem tem sol em Capricórnio costuma ter seus propósitos e metas bem definidos. Signo de praticidade que segue as regras do jogo tem total noção dos seus limites. Capricórnio é maduro e bem humorado, mas também pode ser frio nas relações e um tanto pessimista.';
    const String text2 =
        'Praticidade e maturidade são típicas características de Capricórnio. Independentes, costumam fazer seu próprio caminho e não confiar muito em rotas traçadas por outras pessoas. Quem tem um acúmulo de planetas em Capricórnio signo pode ter um perfil workaholic, mas a carreira profissional é apenas um dos aspectos que chamam a atenção dos capricornianos.';
    const String text3 =
        'A paciência tende a ser bem comum para os nativos desse signo que, desde muito cedo, aprendem que tudo na vida demanda tempo e dedicação. O sucesso é fruto de persistência, aprendizado e disciplina. Consciência de que regras existem e devem ser cumpridas também é típico do signo de Capricórnio. Mas atenção! O excesso de foco material pode contribuir para o desenvolvimento de posturas avarentas ou excessivamente ambiciosas. Uma dose extra de pessimismo também pode existir.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "aquario") {
    const String text1 =
        'Quem tem sol em Aquário costuma ter a amizade como cartão de visita e ter uma conexão intensa com a liberdade. Signo idealista, tende a dar preferência aos diálogos racionais. Aquário é solidário e humano, também pode ser radical e bem “do contra”.';
    const String text2 =
        'A busca por inovação e independência podem ser características fortes em pessoas com o sol no signo de Aquário. Com criatividade sempre em alta, costumam ser bastante inventivas e direcionadas a solução de problemas. Quem tem um acúmulo de planetas no signo de Aquário pode ter um perfil questionador e radical, e em algumas situações pode discordar da maioria pelo simples fato de querer ser sempre diferente.';
    const String text3 =
        'As relações de amizade tendem a ser bem importantes para aquariano e para aquariana, esse sentimento nasce, principalmente, pelo forte senso de coletividade presente em Aquário signo. Consciência de que a felicidade de um só é possível com a felicidade de todos é bem característico nesse signo. Em casos com pouca maturidade, essa relação aquariana com a coletividade pode se manifestar em posturas extremistas ou em personalidades rebeldes sem causa.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  } else if (signo == "peixes") {
    const String text1 =
        'Quem tem sol em Peixes costuma entender tudo sem precisar de muitas palavras, possuem uma sensibilidade superior. Signo compassivo e inspirador, Peixes tende a ter uma forte conexão com a espiritualidade, mas pode se iludir com certa facilidade.';
    const String text2 =
        'A empatia e a humildade podem ser fortes características de Peixes. Sempre conectados com sua intuição, piscianos e piscianas costumam captar as coisas no ar, muitas vezes são pessoas bem discretas e observadoras que conseguem perceber o mundo através da observação de si. Quem tem um acúmulo de planetas no signo de Peixes tende a dar muita importância aos seus sonhos e ao que ainda não é real, mas pode ser.';
    const String text3 =
        'Costumam ser pessoas compreensivas e compassivas. Por guardar em si emoções que em vários momentos são opostas, conseguem enxergar os desafios do outro com bastante facilidade. As relações afetivas são bem importantes para esses nativos, mas o romantismo excessivo do signo de Peixes também pode sinalizar uma inclinação para amores platônicos e facilidade para viver desilusões amorosas.';
    return text1 + '\n\n' + text2 + '\n\n' + text3;
  }
  return "";
}

String getImage(String? signo) {
  if (signo == "aries") {
    return "assets/images/aries.png";
  } else if (signo == "touro") {
    return "assets/images/taurus.png";
  } else if (signo == "gemeos") {
    return "assets/images/gemini.png";
  } else if (signo == "cancer") {
    return "assets/images/cancer.png";
  } else if (signo == "leao") {
    return "assets/images/leo.png";
  } else if (signo == "virgem") {
    return "assets/images/virgo.png";
  } else if (signo == "libra") {
    return "assets/images/libra.png";
  } else if (signo == "escorpiao") {
    return "assets/images/scorpio.png";
  } else if (signo == "sagitario") {
    return "assets/images/sagittarius.png";
  } else if (signo == "capricornio") {
    return "assets/images/capricorn.png";
  } else if (signo == "aquario") {
    return "assets/images/aquarius.png";
  } else if (signo == "peixes") {
    return "assets/images/pisces.png";
  }
  return "";
}

String getElementImage(String? signo) {
  if (signo == "aries") {
    return "assets/images/fire.png";
  } else if (signo == "touro") {
    return "assets/images/earth.png";
  } else if (signo == "gemeos") {
    return "assets/images/wind.png";
  } else if (signo == "cancer") {
    return "assets/images/water.png";
  } else if (signo == "leao") {
    return "assets/images/fire.png";
  } else if (signo == "virgem") {
    return "assets/images/earth.png";
  } else if (signo == "libra") {
    return "assets/images/wind.png";
  } else if (signo == "escorpiao") {
    return "assets/images/water.png";
  } else if (signo == "sagitario") {
    return "assets/images/fire.png";
  } else if (signo == "capricornio") {
    return "assets/images/earth.png";
  } else if (signo == "aquario") {
    return "assets/images/wind.png";
  } else if (signo == "peixes") {
    return "assets/images/water.png";
  }
  return "";
}

String getPlanetImage(String? signo) {
  if (signo == "aries") {
    return "assets/images/mars.png";
  } else if (signo == "touro") {
    return "assets/images/venus.png";
  } else if (signo == "gemeos") {
    return "assets/images/mercury.png";
  } else if (signo == "cancer") {
    return "assets/images/moon.png";
  } else if (signo == "leao") {
    return "assets/images/sun.png";
  } else if (signo == "virgem") {
    return "assets/images/mercury.png";
  } else if (signo == "libra") {
    return "assets/images/venus.png";
  } else if (signo == "escorpiao") {
    return "assets/images/mars.png";
  } else if (signo == "sagitario") {
    return "assets/images/jupiter.png";
  } else if (signo == "capricornio") {
    return "assets/images/saturn.png";
  } else if (signo == "aquario") {
    return "assets/images/saturn.png";
  } else if (signo == "peixes") {
    return "assets/images/neptune.png";
  }
  return "";
}

String getColors(String? signo) {
  if (signo == "aries") {
    return "Amarelo, Azul e Verde";
  } else if (signo == "touro") {
    return "Verde, Violeta e Rosa";
  } else if (signo == "gemeos") {
    return "Amarelo e Verde";
  } else if (signo == "cancer") {
    return "Rosa e Violeta";
  } else if (signo == "leao") {
    return "Amarelo, Laranja e Verde";
  } else if (signo == "virgem") {
    return "Azul e Verde";
  } else if (signo == "libra") {
    return "Rosa";
  } else if (signo == "escorpiao") {
    return "Verde, Violeta e Azul Índigo";
  } else if (signo == "sagitario") {
    return "Laranja, Verde de Violeta";
  } else if (signo == "capricornio") {
    return "Amarelo e Laranja";
  } else if (signo == "aquario") {
    return "Amarelo e Vermelho";
  } else if (signo == "peixes") {
    return "Verde e Violeta";
  }
  return "";
}

String getRitmo(String? signo) {
  if (signo == "aries") {
    return "Cardinal";
  } else if (signo == "touro") {
    return "Fixo";
  } else if (signo == "gemeos") {
    return "Mutável";
  } else if (signo == "cancer") {
    return "Cardinal";
  } else if (signo == "leao") {
    return "Fixo";
  } else if (signo == "virgem") {
    return "Mutável";
  } else if (signo == "libra") {
    return "Cardinal";
  } else if (signo == "escorpiao") {
    return "Fixo";
  } else if (signo == "sagitario") {
    return "Mutável";
  } else if (signo == "capricornio") {
    return "Cardinal";
  } else if (signo == "aquario") {
    return "Fixo";
  } else if (signo == "peixes") {
    return "Mutável";
  }
  return "";
}

String getRitmoText(String? signo) {
  if (signo == "aries") {
    return "Os signos que são de ritmo cardinal se caracterizam pela força de liderança para iniciar projetos e novos ciclos. Áries simboliza a energia vital do fogo.";
  } else if (signo == "touro") {
    return "Os signos que são de ritmo fixo se caracterizam por concentrar as características do elemento de forma mais potencializada. Touro simboliza a firmeza da terra.";
  } else if (signo == "gemeos") {
    return "Os signos que são de ritmo mutável se caracterizam pelo poder de transformação e de fechamento de ciclos. Gêmeos simboliza a efervescência de ideias.";
  } else if (signo == "cancer") {
    return "Os signos que são de ritmo cardinal se caracterizam pela força de liderança para iniciar projetos e novos ciclos. Câncer simboliza o instinto emocional da água.";
  } else if (signo == "leao") {
    return "Os signos que são de ritmo fixo se caracterizam por concentrar as características do elemento de forma mais potencializada. Leão simboliza o brilho natural que irradia do fogo.";
  } else if (signo == "virgem") {
    return "Os signos que são de ritmo mutável se caracterizam pelo poder de fechamento de ciclos. Virgem simboliza as ações que buscam o aperfeiçoamento.";
  } else if (signo == "libra") {
    return "Os signos que são de ritmo cardinal se caracterizam pela força de liderança para iniciar projetos e novos ciclos. Libra simboliza a sociabilidade e a facilidade de criar relações.";
  } else if (signo == "escorpiao") {
    return "Os signos que são de ritmo fixo se caracterizam por concentrar as características do elemento de forma mais potencializada. Escorpião simboliza o poder transformador da água.";
  } else if (signo == "sagitario") {
    return "Os signos que são de ritmo mutável se caracterizam pelo poder de transformação e de fechamento de ciclos.";
  } else if (signo == "capricornio") {
    return "Os signos que são de ritmo cardinal se caracterizam pela força de liderança para iniciar projetos e novos ciclos. Capricórnio simboliza o poder de realização da terra.";
  } else if (signo == "aquario") {
    return "Os signos que são de ritmo fixo se caracterizam por concentrar as características do elemento de forma mais potencializada. Aquário representa o apreço pelo aprendizado alcançado ao longo da história.";
  } else if (signo == "peixes") {
    return "Os signos que são de ritmo mutável se caracterizam pelo poder de transformação e de fechamento de ciclos. Peixes representa a possível flexibilidade da água.";
  }
  return "";
}

String getColorsText(String? signo) {
  if (signo == "aries") {
    return "Amarelo destaca a criatividade e ajuda a manter a concentração para novos projetos e ações. Azul e verde trazem mais equilíbrio e podem ajudar a controlar a ansiedade e estresse.";
  } else if (signo == "touro") {
    return "Violeta é a cor da transmutação, ajuda a trabalhar o desapego; o verde, traz equilíbrio e ajuda a desenvolver a paciência e o rosa pode ajudar em momentos de carência afetiva.";
  } else if (signo == "gemeos") {
    return "O amarelo ajuda a potencializar a comunicação e a criatividade, talentos fortes do signo de Gêmeos. A cor verde ajuda a equilibrar as dualidades e amenizar esse comportamento nas relações com os outros.";
  } else if (signo == "cancer") {
    return "O rosa ajuda a trabalhar o perdão e entender melhor as emoções. A cor violeta contribui para a transmutação de emoções que possam estar estagnadas impedindo a felicidade, o amor e a compreensão.";
  } else if (signo == "leao") {
    return "O amarelo pode ajudar a dar mais vitalidade ao brilho natural do signo de Leão. A cor laranja enfatiza os sentimentos de coragem e ousadia. O verde traz equilíbrio e sentimentos mais amenos.";
  } else if (signo == "virgem") {
    return "O azul traz mais tranquilidade e pode ajudar a diminuir a procura pela perfeição. O verde pode ajudar a desenvolver mais equilíbrio e harmonia, diminuindo a visão autocrítica.";
  } else if (signo == "libra") {
    return "O rosa é indicado para trabalhar a harmonia, os relacionamentos e a comunicação. Ajuda a desenvolver equilíbrio.";
  } else if (signo == "escorpiao") {
    return "O verde sempre traz mais equilíbrio. O violeta pode ajudar a desenvolver a conexão com a espiritualidade e o azul índigo fortalece e desenvolve a intuição.";
  } else if (signo == "sagitario") {
    return "O laranja traz ousadia para lidar com situações e pessoas. O violeta pode ajudar a lidar com mudanças e transformações e o verde para o equilíbrio.";
  } else if (signo == "capricornio") {
    return "O amarelo pode ajudar na comunicação e o laranja auxilia a diminuir medos e inseguranças.";
  } else if (signo == "aquario") {
    return "O amarelo ajuda a desenvolver a criatividade e estimula a concentração. O vermelho pode ajudar a amenizar a dispersão, trazendo mais estrutura e sentimento de presença.";
  } else if (signo == "peixes") {
    return "O violeta fortalece os laços de espiritualidade e a conexão com algo superior. O verde pode ajudar a manter o equilíbrio e a harmonia.";
  }
  return "";
}

String getPlanetText(String? signo) {
  if (signo == "aries") {
    return "Marte se relaciona com nossa força realizadora. Como regente de Áries, destaca o impulso imediatista, a coragem para agir e tomar decisões.";
  } else if (signo == "touro") {
    return "Esse planeta simboliza como você ama e também como você enxerga o que é belo. Como regente do signo Touro, Vênus destaca o amor como fonte de segurança.";
  } else if (signo == "gemeos") {
    return "Planeta da razão, está relacionado a tudo o que envolve o raciocínio e a inteligência humana. Em gêmeos destaca a comunicação, a criatividade e a inventividade.";
  } else if (signo == "cancer") {
    return "A Lua é relacionada às questões emocionais. Como regente de Câncer signo, destaca a sensibilidade e o instinto maternal.";
  } else if (signo == "leao") {
    return "O Sol é o astro mais importante, o centro do sistema. Como regente do signo Leão, destaca a vitalidade, a energia e a facilidade em liderar.";
  } else if (signo == "virgem") {
    return "Planeta da razão, está relacionado a tudo o que envolve o raciocínio e a inteligência humana. No signo Virgem destaca a visão crítica e opinativa do signo.";
  } else if (signo == "libra") {
    return "Esse planeta simboliza como você ama e também como você enxerga o que é belo. Como regente de Libra, Vênus destaca a idealização de um amor perfeito.";
  } else if (signo == "escorpiao") {
    return "Marte se relaciona com nossa força realizadora. Como regente de Escorpião signo, destaca a agressividade estratégica.";
  } else if (signo == "sagitario") {
    return "Planeta da expansão, está relacionado ao que traz crescimento, felicidade e confiança. No signo de Sagitário destaca a busca pelos excessos e expansividade: mais é sempre melhor.";
  } else if (signo == "capricornio") {
    return "Senhor do tempo, Saturno é o planeta que fala sobre maturidade e responsabilidade. Como regente, destaca a consciência natural do signo de Capricórnio de que tudo tem seu tempo.";
  } else if (signo == "aquario") {
    return "Senhor do tempo, Saturno é o planeta que fala sobre maturidade e responsabilidade, como regente de aquário signo, destaca a importância de fechar ciclos para que outros possam ser iniciados.";
  } else if (signo == "peixes") {
    return "Netuno, planeta dos sonhos, destaca em Peixes o grande potencial de fantasia e imaginação.";
  }
  return "";
}

String getElementText(String? signo) {
  if (signo == "aries") {
    return "Os signos do elemento Fogo veem o mundo de forma entusiasta. Tendem a desenvolver uma forte criatividade e se guiar pelo seu poder de ação.";
  } else if (signo == "touro") {
    return "Os signos do elemento Terra vêem o mundo de forma objetiva. Tendem a ser mais estáveis, inspiram confiança e lidam com as mudanças de forma mais lenta.";
  } else if (signo == "gemeos") {
    return "Os signos do elemento Ar veem o mundo de forma racional. Tendem a ser bem inteligentes, desenvolvem múltiplos interesses, mas também podem ser dispersos.";
  } else if (signo == "cancer") {
    return "Os signos do elemento Água veem o mundo de forma sentimental. Tendem a desenvolver uma forte intuição instintiva e não racional e guiar suas ações pelas emoções.";
  } else if (signo == "leao") {
    return "Os signos do elemento Fogo veem o mundo de forma entusiasta. Tendem a desenvolver uma forte criatividade e se guiar pelo seu poder de ação.";
  } else if (signo == "virgem") {
    return "Os signos do elemento Terra vêem o mundo de forma objetiva. Tendem a ser mais estáveis, inspiram confiança e lidam com as mudanças de forma mais lenta.";
  } else if (signo == "libra") {
    return "Os signos do elemento Ar veem o mundo de forma racional. Tendem a ser bem inteligentes, desenvolvem múltiplos interesses, mas também podem ser indecisos.";
  } else if (signo == "escorpiao") {
    return "Os signos do elemento Água veem o mundo de forma sentimental. Tendem a desenvolver uma forte intuição instintiva,não racional e guiar suas ações pelas emoções.";
  } else if (signo == "sagitario") {
    return "Os signos do elemento Fogo veem o mundo de forma entusiasta. Tendem a desenvolver uma forte criatividade e se guiar pelo seu poder de ação.";
  } else if (signo == "capricornio") {
    return "Os signos do elemento Terra vêem o mundo de forma objetiva. Tendem a ser mais estáveis, inspiram confiança e lidam com as mudanças de forma mais lenta.";
  } else if (signo == "aquario") {
    return "Os signos do elemento Ar veem o mundo de forma racional. Tendem a ser bem inteligentes, desenvolvem múltiplos interesses, mas também podem ser indecisos.";
  } else if (signo == "peixes") {
    return "Os signos do elemento Água veem o mundo de forma sentimental. Tendem a desenvolver uma forte intuição instintiva e não racional e guiar suas ações pelas emoções.";
  }
  return "";
}
