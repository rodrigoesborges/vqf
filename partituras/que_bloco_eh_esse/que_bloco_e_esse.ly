\version "2.22.0"
\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
\include "../marcaspadronizadas.ly"

\header{
  title = "Que Bloco e Esse"
  composer = "Ile Aye"
}

#(set-global-staff-size 17)

parteum = \transpose bes g { \relative c'' {
    \time 4/4
  \key bes \major

    \clef "treble" \numericTimeSignature\time 4/4 \key bes \major
    \partial 16*13 \stemDown c16 ^ "" \stemDown c16 [ \stemDown c16
    \stemDown c16 \stemDown c16 ] \stemDown es16 [ \stemDown es16
    \stemDown es16 \stemDown es16 ] \stemDown d8. [ \stemDown bes16 ] | % 1
    \stemDown c8. [ \stemDown c16 ] \stemDown c16 [ \stemDown c16
    \stemDown c16 \stemDown c16 ] \stemDown bes16 [ \stemDown bes16
    \stemDown bes16 \stemDown bes16 ] \stemUp g8. [ \stemUp bes16 ]
    \break | % 2
    \stemDown c8. [ \stemDown c16 ] \stemDown c16 [ \stemDown c16
    \stemDown c16 \stemDown c16 ] \stemDown es16 [ \stemDown es16
    \stemDown es16 \stemDown es16 ] \stemDown d8. [ \stemDown bes16 ] | % 3
    \stemDown c8. [ \stemDown c16 ] \stemDown c16 [ \stemDown c16
    \stemDown c16 \stemDown c16 ] \stemDown bes16 [ \stemDown bes16
    \stemDown bes16 \stemDown bes16 ] \stemUp g8. [ \stemUp bes16 ] | % 4
    \stemDown c2 b2 \rest \break | % 5
    \repeat volta 2 {
        b8 \rest \stemDown c8 \stemDown g'8 [ \stemDown g16 \stemDown f16
        ] b,8 \rest \stemDown es8 ~ \stemDown es4 | % 6
        b8 \rest \stemDown c16 [ \stemDown c16 ] \stemDown es8 [
        \stemDown es16 \stemDown f16 ] b,16 \rest \stemDown c8 [
        \stemDown es16 ~ ] \stemDown es4 | % 7
        b8 \rest \stemDown es16 [ \stemDown es16 ] \stemDown g8 [
        \stemDown g16 \stemDown f16 ] b,8 \rest \stemDown es8 ~
        \stemDown es8 [ \stemDown es16 \stemDown es16 ] \break | % 8
        }
    \alternative { {
            \bar "|"
            \stemDown es16 [ \stemDown es16 \stemDown es16 \stemDown es16
            ] \stemDown d8. [ \stemDown bes16 ] \stemDown c4 b4 \rest }
        {
            \bar "|."
            \stemDown es16 [ \stemDown es16 \stemDown es16 \stemDown es16
            ] \stemDown d8. [ \stemDown bes16 ] \stemDown c4 b4 \rest |
            \barNumberCheck #10
            \stemDown g'16 [ \stemDown g8 \stemDown g16 ] b,16 \rest
            \stemDown g'8 [ \stemDown f16 ] b,16 \rest \stemDown es8.
            \stemDown es8 [ \stemDown f8 ] }
        } \bar "|"
    \break | % 11
    b,16 \rest \stemDown es8 [ \stemDown f16 ] b,16 \rest \stemDown es8
    [ \stemDown f16 ] b,4 \rest b16 \rest \stemDown f'8 [ \stemDown es16
    ] | % 12
    \stemDown f16 [ \stemDown es8 \stemDown f16 ] b,16 \rest \stemDown
    es8 [ \stemDown f16 ] b,16 \rest \stemDown f'8. b,16 \rest \stemDown
    f'8 [ \stemDown es16 ] | % 13
    \stemDown f8 [ \stemDown g16 \stemDown g16 ] b,16 \rest \stemDown es8
    [ \stemDown es16 ] b4 \rest b16 \rest \stemDown es16 [ \stemDown es16
    \stemDown es16 ] \break | % 14
    \stemDown g16 [ \stemDown g16 \stemDown g16 \stemDown g16 ]
    \stemDown g16 [ \stemDown g16 \stemDown es8 ~ ] \stemDown es8 [
    \stemDown es8 ] b16 \rest \stemDown f'8 [ \stemDown es16 ] | % 15
    \stemDown f8 [ \stemDown es16 \stemDown f16 ] b,16 \rest \stemDown
    es16 [ \stemDown f16 \stemDown es16 ] \stemDown f16 [ \stemDown c8
    \stemDown c16 ] b4 \rest | % 16
    c8 \rest \stemDown es8 \stemDown f16 [ \stemDown es8 \stemDown f16 ]
    \stemDown f16 [ \stemDown f8 \stemDown es16 ] \stemDown f16 [
    \stemDown f8 \stemDown f16 ] \break | % 17
    \stemDown f16 [ \stemDown f8 \stemDown es16 ] \stemDown g16 [
    \stemDown g8 \stemDown g16 ] \stemDown g8 [ \stemDown g8 ] b,4 \rest
    \bar "|."
    }
}






letraum = \lyricmode { 
Somos criolo 
doido Somos bem legal Temos cabelo duro Somos black 
power
Que bloco é esse? Eu quero saber, 
 o mundo negro 
Que viemos mostra prá voc�
� Prá você Somos criolo 
doido Somos bem legal Temos cabelo duro Somos black 
power
}

letradois = \lyricmode {
Branco, se você 
soubesse O valor que o preto tem, Tu tomava 
um banho de piche, branco 
 E ficava preto também 
 Não te ensino minha malandragem 
Nem tão pouco 
minha filosofia 
Por quê?   Quem dá luz 
ao cegoÉ bengala branca 
E santa luzia 
Ai,ai meu Deus!	  
   
}

letratoda = { \letraum \letradois}

\book {
	\bookOutputName "que_bloco_eh_esse_Eb" 
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
	      \skip 256 \bar "que_bloco_eh_esse_letra" \break 
	      
%	      \partedois
	    }
	  }
 	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "que_bloco_eh_esse_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tromboneC" {
	    \parteum
	    \skip 256 \bar "que_bloco_eh_esse_letra" \break 
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
  \bookOutputName "que_bloco_eh_esse_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes c' {
	      \parteum\skip 256 \bar "que_bloco_eh_esse_letra" \break 
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
  \bookOutputName "que_bloco_eh_esse_Eb_notas"
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
	      \skip 256 \bar "que_bloco_eh_esse_letra" \break 
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

\version "2.22.0"
  

