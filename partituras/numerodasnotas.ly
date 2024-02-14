\version "2.18.2"
#(define Gravador_numero_notas
   (make-engraver
    (acknowledgers
     ((note-head-interface engraver grob source-engraver)
      (let* ((context (ly:translator-context engraver))
	    (number-names 
	      (vector '"1" '"2" '"3" '"4" '"5" '"6" '"7")))
	(ly:grob-set-property! grob 'note-names number-names))))))

% Na partitura, criar um book com as seguintes configurações:
% #(set-global-staff-size 40)
% \layout {
%   ragged-right = ##t
%   \context {
%     \Voice
%     \consists \Gravador_numero_notas    
%   }
% }

%    \easyHeadsOn

   % \teeny 
