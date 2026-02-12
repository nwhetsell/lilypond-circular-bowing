\version "2.24.0"

circular-bowing-markup = \markup {
  #(define radius 0.8)
  \translate #`(,radius . ,radius) \rotate #90 {
    \overlay {
      #(define thickness 0.125)
      \stencil #(make-partial-ellipse-stencil radius radius 60 360 thickness #f #f)
      #(define x-offset 0.3)
      #(define y-offset 0.35)
      \override #'(filled . #t)
      \path #thickness #`((moveto ,radius ,y-offset)
                          (rlineto ,x-offset ,(- 0 y-offset))
                          (rlineto ,(- 0 (* 2 x-offset)) 0)
                          (closepath))
    }
  }
}

#(append! default-script-alist
  `(
    (circular-bowing
      . (
          (stencil . ,ly:text-interface::print)
          (text . ,circular-bowing-markup)
          (avoid-slur . around)
          (padding . 0.4)
          (direction . ,UP)
          (side-axis . ,Y)))))

circular-bowing = #(make-articulation 'circular-bowing)
