Lesson Module Repository
========================

The [module repository](https://github.com/cyberpost500/modules/) will hold the
content of any lessons we (the Post Advisors) produce at the explorer post.

Lessons are written up in a langauge called Markdown.  To convert any given
Markdown file from the repository into a PDF, use `pandoc` with the `xelatex`
engine, preferably with a Unicode font so that none of the glyphs are missing
from the resulting document.

For example:

    pandoc -V geometry:margin=0.5in --variable mainfont="DejaVu Sans" --variable \
    sansfont="DejaVu Sans" --variable monofont="DejaVu Sans Mono" \
    --latex-engine=xelatex  live-boot.mkd -o live-boot.pdf --highlight-style=tango \
    --toc -N

PDFS (and HTML)
---------------
The bit about Pandoc and Xelatex confusing?  Yeah, it kind of is.  Here's a
running list of the modules already exported to PDF (and HTML):

* Live Boot Module [pdf](live-boot/live-boot.pdf) [html](live-boot/live-boot.html)
