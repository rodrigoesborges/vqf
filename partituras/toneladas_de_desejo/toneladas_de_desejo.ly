\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
\include "../marcaspadronizadas.ly"

\header{
  title = "Toneladas de desejo"
  composer = "Timbalada"
}

#(set-global-staff-size 17)

parteum = \relative c'' {
    \time 4/4
  \key c \major
     c8. c c8 b8. b b8 |
     a8. a a8 b8. b b8 |
     c4 e8 c g e' d c  |
     d4 d8 b g d' c b |
     c4 e8, g  e g e g |
     a16 a8 g16 f8 d ~ d2
     r4 e8 g  e g e g
     a16 a8 g16 f8 d ~ d4 r8 g
     e'4 c8 e r  c c16 d e d~ 
     d4 r8 b r b16 c d c b c ~ 
     c4 r8 a r a b16 c b a 
     b8  g e d r4 r8 g
     e'4 c8 e r  c c16 d e d~ 
     d4 r8 b r b16 c d c b c ~ 
     c4 r8 a r a b16 c b a 
     b8  g e d e' d c b  
     c16 c g g c c r8 r8 g c e d16 d c c d r8. d4 d 
     c16 c g g c c r8 r8 g c e d16 d c c d r8. d4 d8 g,
     c4 r2 r4 
     r4 c8 e d c a g 
     c4 r2 r4  r4 c8 e d c a
     c4 r2.  r4 r c8 e d c a
     c4 r2 r4 r2 r4. g8
     c4 r2 r4 
     r4 c8 e d c a g 
     c4 r2 r4  r4 c8 e d c a g
     c4 r2 g4
     c e8 f8~ f e d c
     r2 r4 g 
     c e8 d8~ d e d c

}



letraum = \lyricmode {
Gri -- te se qui -- ser gri -- tar
Tá me -- la -- da de den -- dê
No ca -- chi -- nho des -- sa tim -- ba -- la -- da
Pu -- xa que é teu
No pas -- si -- nho des -- sa tim -- ba -- la -- da
Mi -- nha prin -- ce -- sa
Ve -- nho aqui pa -- ra mos -- trar
To -- ne -- la -- das de de -- se -- jo
Do xe -- rém des -- sa tim -- ba -- la -- da
Nun -- ca se es -- que -- ça
Pro ca -- mi -- nho des -- sa tim -- ba -- la -- da
Pu -- xa Tê -- te
Vi -- ver, va -- ler
O som nos le -- var
De pa -- ran -- go -- lé pra lá
Vem di -- zer me que amar é
Hum, hum, hum...
Vem ver, va -- ler
O som nos le -- var
De pa -- ran -- go -- lé pra lá
Vem di -- zer que a amar é
Uôu, uôu
Le -- va, le -- va, le -- va
Le -- va a le -- va -- da do tim -- bal, au, au
Le -- va, le -- va, le -- va
Le -- va a le -- va -- da do tim -- bal, au, au
Le -- va, le -- va, le -- va
Le -- va a le -- va -- da do tim -- bal, au, au
Fi -- que se qui -- ser fi -- car
Tô gos -- tan -- do de sa -- ber
Que pas -- seio no teu sor -- ri -- so
Vo -- cê me vê
Que to -- li -- ce é o des -- ti -- no
Sem gi -- rar bem
Tens os lá -- bi -- os de fa -- vo
Por fa -- vor, ain -- da não sei
Ca -- da noi -- te é um ves -- ti -- do
Que o dia tem
Quan -- do o dia ti -- ra o ves -- ti -- do
O so -- no vem
Vem ver, va -- ler
O som nos le -- var
De pa -- ran -- go -- lé pra lá
Vem di -- zer que a amar é
Uôu, uôu
Vem ver, va -- ler
O som nos le -- var
De pa -- ran -- go -- lé pra lá
Vem di -- zer que a amar é
Uôu, uôu
Le -- va, le -- va, le -- va
Le -- va a le -- va -- da do tim -- bal, au, au
Le -- va, le -- va, le -- va
Le -- va a le -- va -- da do tim -- bal, au, au
Le -- va, le -- va, le -- va
Le -- va a le -- va -- da do tim -- bal, au, au
Le -- va, le -- va, le -- va
Le -- va a le -- va -- da do tim -- bal, au, au
E ho -- je... Hei
Tô fe -- liz é de lhe ver... Hei
Com di -- nhei -- ro ou sem di -- nhei -- ro... Hei
Eu me vi -- ro em fe -- ve -- rei -- ro
E ho -- je... Hei
Tô fe -- liz é de lhe ver... Hei
Com di -- nhei -- ro ou sem di -- nhei -- ro... Hei
Fe -- ve ve -- rei -- ro eu sou
Fe -- ve -- rei -- ro eu vou
Le -- va, le -- va, le -- va le -- va a le -- va -- da do tim -- bal
Le -- va, le -- va, le -- va le -- va a le -- va -- da do tim -- bal
Le -- va, le -- va, le -- va le -- va a le -- va -- da do tim -- bal
}



letradois = \lyricmode { 
  
  Vi -- e -- mos  do  E -- gi -- to,
  E  mui -- tas  ve -- zes  nós  ti -- ve -- mos  que  re -- zar
  A -- llah   A -- llah   A -- llah,   meu  bom  A -- llah!
  Man -- de  á  -- gua  pra  Io -- iô
  Man -- de  á  -- gua  pra  Ia -- iá
  A -- llah,   meu  bom  A -- llah
  
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "toneladas_de_desejo_Eb"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes g' {
	      \parteum
	      \skip 256 \bar "toneladas_de_desejo_letra" \break 
	      
%	      \partedois
	    }
	  }
% 	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "toneladas_de_desejo_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tromboneC" {
	    \parteum
	    \skip 256 \bar "toneladas_de_desejo_letra" \break 
%	    \partedois
	  }
%	\addlyrics {\letratoda}
	}
    >>
    \layout {}
    \midi {
    \tempo 4 = 140
    \context {
    \Voice \consists "Staff_performer"
    }
  }
  }
}

\book {
  \bookOutputName "toneladas_de_desejo_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes c' {
	      \parteum\skip 256 \bar "toneladas_de_desejo_letra" \break 
%	      \partedois
	    }
	  }
%	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "toneladas_de_desejo_Eb_notas"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
       \accidentalStyle Score.dodecaphonic
	  \new Voice = "saxalto" {
	    \transpose bes g {
            \easyHeadsOn
            \teeny
	      \parteum
	      \skip 256 \bar "toneladas_de_desejo_letra" \break 
%	      \partedois
	    }
	  }
%	  \addlyrics {\letratoda}
	}
    >>
    \layout {
	        \context {
      \Voice
      \consists \Gravador_nome_notas
      }
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}
    }
  }
}

  
%\version "2.18.2"  

%\include "cifra_toneladas_de_desejo.ly"

#(set-global-staff-size 15)

%\book {
%  \bookOutputName "toneladas_de_desejo_letra"
%  \header {
%     instrument = "Letra e Acordes"
%  }
%   \score {
%    <<
%       \new Staff  {
%          \new Voice = "letra" {
%             \parteum
%             \partedois
%           }
%      }
%             \new ChordNames \with {
%               \consists "Bar_engraver"
%             }
%             \acordetodo
%             \new Lyrics
%             \lyricsto "letra" \letratoda
%    >>
%           \include "../imprimirsoletras.ly"
%  }
%}


